<?php
session_start();
ob_start();
include './model/pdo.php';
include './model/sanpham.php';
include './model/contact_user.php';
include './model/bosuutap.php';
include './model/taikhoan/dangnhap.php';
include './model/taikhoan/dangky.php';
include './model/taikhoan/taikhoan.php';
include './model/giohang.php';
include './model/donhang.php';

include 'view/header.php';
date_default_timezone_set('Asia/Ho_Chi_Minh');
if (isset($_GET['act']) && $_GET['act'] != '') {
    $act = $_GET['act'];
    switch ($act) {
        case "chitietsanpham":
            $list_size = querry_size();
            if (isset($_GET['ma_sp'])) {
                $list_size_of_prd =  querry_sanpham_bienthe($_GET['ma_sp']);
                // echo "<pre>";
                // print_r($list_size_of_prd);
                $one_prd_detail = query_one_sanpham($_GET['ma_sp']);
                $img_one_prd = load_sanpham_img_home($_GET['ma_sp']);
                $id_chatlieu = $one_prd_detail['id_chatlieu'];
                $img_16_prd =  load16_sanpham($id_chatlieu, '');
            }
            include 'view/chitietsanpham.php';
            break;
        case "bosuutap":
            $list_bst =  query_bosuutap('');
            include 'view/bosuutap.php';
            break;
        case "dangnhap":
            $listaccuser = querry_all_account('');
            $listaccuser = array_column($listaccuser, 'tendangnhap');
            if (isset($_POST['dangnhap'])) {
                $regexname_signin = '/^[a-zA-Z0-9]{6,16}$/';
                $regexpass_signin = '/^(?=.*\d)[a-zA-Z0-9]{6,}$/';

                if (preg_match($regexname_signin, $_POST['namesignin']) == 1) {
                    if (!in_array($_POST['namesignin'], $listaccuser)) {
                        $checkvalidate_signin['namesignin_unduplicate'] = 'Tài khoản không tồn tại';
                    } else {
                        $namesignin = $_POST['namesignin'];
                        $check_pass =  validatePassword($namesignin);
                        print_r($check_pass);
                    }
                } else {
                    $checkvalidate_signin['namesignin'] = 'Tên đăng nhập phải từ 6-16 ký tự';
                }


                if (preg_match($regexname_signin, $_POST['passsignin']) == 1) {
                    if (isset($check_pass['matkhau']) && $check_pass['matkhau'] == $_POST['passsignin']) {
                        $passsignin = $_POST['passsignin'];
                    } else {
                        $checkvalidate_signin['checkpasssignin'] = 'Sai mật khẩu';
                    }
                } else {
                    $checkvalidate_signin['passsignin'] = 'Mật khẩu phải ít nhất 6 ký tự và có ít nhất 1 số';
                }

                if (empty($checkvalidate_signin)) {
                    $taikhoan = checkaccount_login($namesignin, $passsignin);
                    if (is_array($taikhoan)) {
                        $role = $taikhoan['role'];
                        if ($role == 1) {
                            $_SESSION['role'] = $role;
                            $_SESSION['name_login'] = $taikhoan['tendangnhap'];
                            header('Location: admin/index.php');
                            break;
                        } else if ($role == 0) {
                            $_SESSION['id_user'] = $taikhoan['id_nguoidung'];
                            $_SESSION['name_login'] = $taikhoan['tendangnhap'];
                            $_SESSION['pass_login'] = $taikhoan['matkhau'];
                            $_SESSION['email_login'] = $taikhoan['email'];
                            $_SESSION['sdt_login'] = $taikhoan['sodienthoai'];
                            $_SESSION['diachi_login'] = $taikhoan['diachi'];
                            header('Location: index.php');
                        }
                    }
                } else {
                    include 'view/dangnhapdangky.php';
                    break;
                }
            }
            include 'view/dangnhapdangky.php';
            break;

        case 'dangxuat':
            session_unset();
            header('Location: index.php');
            break;

        case "dangky":
            $listaccuser = querry_all_account('');
            $listaccuser = array_column($listaccuser, 'tendangnhap');
            if (isset($_POST['dangky'])) {
                $checkvalidate_signup = [];
                $regexname_signup = '/^[a-zA-Z0-9]{6,16}$/';
                $regexpass_signup = '/^(?=.*\d)[a-zA-Z0-9]{6,}$/';
                if (preg_match($regexname_signup, $_POST['namesignup']) == 1) {
                    if (in_array($_POST['namesignup'], $listaccuser)) {
                        $checkvalidate_signup['namesignup_duplicate'] = 'Tài khoản đã tồn tại';
                    } else {
                        $namesignup = $_POST['namesignup'];
                    }
                } else {
                    $checkvalidate_signup['namesignup'] = 'Tên đăng nhập phải từ 6-16 ký tự';
                }
                if (preg_match($regexpass_signup, $_POST['passsignup']) == 1) {
                    $passsignup = $_POST['passsignup'];
                } else {
                    $checkvalidate_signup['passsignup'] = 'Mật khẩu phải ít nhất 6 ký tự và có ít nhất 1 số';
                }

                if ($_POST['repasssignup'] != $_POST['passsignup']) {
                    $checkvalidate_signup['repasssignup'] = 'Mật khẩu không trùng';
                }
                $sdtsignup = $_POST['sdtsignup'];
                $emailsignup = $_POST['emailsignup'];

                if (empty($checkvalidate_signup)) {
                    create_account($namesignup, $passsignup, $sdtsignup, $emailsignup);
                    header('Location: index.php');
                } else {
                    include 'view/dangnhapdangky.php';
                    break;
                }
            }
            include 'view/dangnhapdangky.php';
            break;

        case "dathang":
            if (isset($_SESSION['id_user'])) {
                $_SESSION['id_user'];
                $list_prd_incart =   querry_content_cart($_SESSION['id_user']);
                // echo "<pre>";
                // print_r($list_prd_incart);
                if (isset($_POST['order_bill'])) {
                    $id_hoadon = random_code_bill();
                    $id_nguoidung = $_SESSION['id_user'];
                    $ngaytaohoadon =  date('d/m/Y -- H:i');
                    $hinhthuc_thanhtoan = $_POST['payinformation'];
                    $giatri_hoadon = $_POST['totalbill'];
                    $trangthai_donhang = $_POST['orderstatus'];
                    $diachi_nguoidung = $_POST['payaddress'];
                    $ct_diachi_nguoidung = $_POST['detail_payaddress'];
                    $paysdt = $_POST['paysdt'];
                    add_hoadon($id_hoadon, $id_nguoidung, $ngaytaohoadon, $hinhthuc_thanhtoan, $giatri_hoadon, $trangthai_donhang, $diachi_nguoidung, $ct_diachi_nguoidung, $paysdt);

                    foreach ($list_prd_incart as $key => $prd) {
                        $ma_sp = $prd['ma_sp'];
                        $so_luong = $prd['soluong_sp'];
                        $id_size = $prd['id_size'];
                        add_chitiehoadon($id_hoadon, $ma_sp, $so_luong, $id_size);
                        $soluong_tonkho = $prd['soluong_tonkho'] -  $so_luong;
                        update_after_order($ma_sp, $soluong_tonkho);
                    }
                    delete_ALLprd_incart();
                    header('Location: index.php?act=dathang');
                }
            }
            include 'view/dathang.php';
            break;
        case "listgiohang":
            if (isset($_SESSION['id_user'])) {
                $_SESSION['id_user'];
                $list_prd_incart =   querry_content_cart($_SESSION['id_user']);
                // echo "<pre>";
                // print_r($list_prd_incart);
            }
            include 'view/giohang.php';
            break;
        case "addgiohang":
            $ma_sp = $_GET['masp'];
            if (isset($_POST['add_prd_cart'])) {
                if (isset($_SESSION['id_user'])) {
                    $id_user = $_SESSION['id_user'];
                } else if (!isset($_SESSION['id_user'])) {

                    $name_user = 'UNLOG' . random_codeUser_noLogin();
                    $_SESSION['id_user'] = $name_user;
                    $id_user = $_SESSION['id_user'];
                } else {
                    $id_user =  $_SESSION['id_user'];
                }
                $time_add_tocart = date('d/m/Y -- H:i');
                $code_prd = $_POST['code_prd'];
                $sizeproduct = $_POST['sizeproduct'];
                $quantity_prd = $_POST['quantity__prdx'];
                add_giohang($id_user, $code_prd, $sizeproduct, $quantity_prd, $time_add_tocart);
                header("Location:index.php?act=chitietsanpham&ma_sp=$ma_sp");
            } else {
                echo "fail";
            }
            break;
        case "delete_prd_incart":
            $ma_sp = $_GET['ma_sp'];
            delete_prd_incart($ma_sp);
            header("Location:index.php?act=listgiohang");
            break;
        case "listsanpham":
            if (isset($_GET['id_chatlieu']) || isset($_GET['id_mathang'])) {
                $id_chatlieu = $_GET['id_chatlieu'];
                $id_mathang = $_GET['id_mathang'];
                $prd_16 = load16_sanpham($id_chatlieu, $id_mathang);
            } else if (isset($_GET['id_bst'])) {
                $prd_16 = load_prd_collection($_GET['id_bst']);
            } else {
                $prd_16 = load16_sanpham('', '');
            }
            $stagnation_prds = stagnation_prd();
            include 'view/listsanpham.php';
            break;
        case "tintuc":
            include 'view/tintuc.php';
            break;
        case "chinhsuataikhoan_list":
            $id_usernow = $_SESSION['id_user'];
            $account_user = querry_one_account($id_usernow);
            include 'view/chinhsuataikhoan.php';
            break;

        case "chinhsuataikhoan_update":
            $id_usernow = $_SESSION['id_user'];
            $account_user = querry_one_account($id_usernow);
            if (isset($_POST['confirm_update_acc'])) {
                $id_user = $_POST['id_user'];
                $name_edit = $_POST['name_edit'];
                $sdt_edit = $_POST['sdt_edit'];
                $diachi_edit = $_POST['diachi_edit'];
                $email_edit = $_POST['email_edit'];
                if ($_POST['pass_edit'] == $account_user['matkhau']) {
                    update_acc_user($id_user, $name_edit, $sdt_edit, $diachi_edit, $email_edit);
                }
            }
            header('Location: index.php');
            break;
        case "contact":
            include 'view/contact.php';
            if (isset($_POST['submit_contact'])) {
                if (!empty($_SESSION['id_user'])) {
                    $id_nguoidung = $_SESSION['id_user'];
                } else {
                    $id_nguoidung = '';
                }
                $contact_name = $_POST['contact_name'];
                $contact_sdt = $_POST['contact_sdt'];
                $contact_email = $_POST['contact_email'];
                $contact_title = $_POST['contact_title'];
                $contact_content = $_POST['contact_content'];
                add_title_contact($id_nguoidung, $contact_name, $contact_sdt, $contact_email, $contact_title, $contact_content);
            }
            break;
        case "quenmatkhau":
            include 'view/quenmatkhau.php';
            break;
    }
} else {
    $prd_inhome8 = load8_sanpham_home();
    $prd_inhome4 = load4_sanpham_home();
    include 'view/home.php';
}

include 'view/footer.php';
