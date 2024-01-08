<?php
/* Bağlantı bilgilerinin alınması*/
require_once("baglanti.php");

$eserISBN = mysqli_real_escape_string($baglanti, $_POST['eserISBN']);
$yazarID = mysqli_real_escape_string($baglanti, $_POST['yazarID']);
$eserAdi = mysqli_real_escape_string($baglanti, $_POST['eserAdi']);
$eserBasimYeri = mysqli_real_escape_string($baglanti, $_POST['eserBasimYeri']);
$eserBasimTarihi = mysqli_real_escape_string($baglanti, $_POST['eserBasimTarihi']);
$eserSayfaSayisi = mysqli_real_escape_string($baglanti, $_POST['eserSayfaSayisi']);
$eserDili = mysqli_real_escape_string($baglanti, $_POST['eserDili']);


/* Ekleme işlemi sorgusu */
$sorgu = "INSERT INTO eser (eserISBN, yazarID, eserAdi, eserBasimYeri, eserBasimTarihi, eserSayfaSayisi, eserDili)
            VALUES ('$eserISBN', $yazarID, '$eserAdi', '$eserBasimYeri', '$eserBasimTarihi', $eserSayfaSayisi, '$eserDili')";

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