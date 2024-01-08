<?php
/* Bağlantı bilgilerinin alınması*/
require_once("baglanti.php");

/* Ekleme işlemi sorgusu */
$eserID = mysqli_real_escape_string($baglanti, $_POST['eserID']);
$eserISBN = mysqli_real_escape_string($baglanti, $_POST['eserISBN']);
$yazarID = mysqli_real_escape_string($baglanti, $_POST['yazarID']);
$eserAdi = mysqli_real_escape_string($baglanti, $_POST['eserAdi']);
$eserBasimYeri = mysqli_real_escape_string($baglanti, $_POST['eserBasimYeri']);
$eserBasimTarihi = mysqli_real_escape_string($baglanti, $_POST['eserBasimTarihi']);
$eserSayfaSayisi = mysqli_real_escape_string($baglanti, $_POST['eserSayfaSayisi']);
$eserDili = mysqli_real_escape_string($baglanti, $_POST['eserDili']);
// echo '<pre>'; print_r($_POST); echo '</pre>';

$sorgu = "UPDATE eser SET 
            eserISBN = '$eserISBN', 
            yazarID = '$yazarID', 
            eserAdi = '$eserAdi', 
            eserBasimYeri = '$eserBasimYeri', 
            eserBasimTarihi = '$eserBasimTarihi', 
            eserSayfaSayisi = '$eserSayfaSayisi', 
            eserDili = '$eserDili' 
            WHERE eserID = '$eserID'";
// echo $sorgu;

if (mysqli_query($baglanti, $sorgu)) {
    mysqli_close($baglanti);
    if (!headers_sent()) {
        header("Location: eserleri_listele.php");
        exit;
    }
} else {
    printf("Hata: " . $sorgu . "<br>" . mysqli_error($baglanti));
}
?>