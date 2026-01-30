# 🎨 Color Picker

Tasarımcılar ve geliştiriciler için hazırlanan bu çoklu platform (Cross-platform) **Flutter** uygulaması, kullanıcıların renk paletlerini keşfetmesine, rastgele tonlar üretmesine ve **Hex kodlarını anında kopyalamasına** olanak tanır.

**iOS, Android ve Web** üzerinde sorunsuz çalışır.

## Uygulama Özellikleri

Uygulamanın temel işlevleri ve ekran görüntüleri aşağıdadır:

| **1. Seçim ve Kopyalama** | **2. Şekil Özelleştirme** |
|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/92632881-ffe1-476f-b1d1-ffb9437e2b2e" width="250"> | <img src="https://github.com/user-attachments/assets/c06a3641-39a7-459d-aff1-7670ba252b9f" width="250"> |
| **Seç ve Kopyala:** Listeden bir renk seçin veya "Random" butonuyla rastgele üretin. Rengin üzerine tıkladığınızda **Hex kodu (örn: #FFC107) otomatik olarak panoya kopyalanır.** | **Görünümü Değiştir:** Sağdaki kutucuğu kullanarak renk gösterimini **Kare** veya **Daire** olarak değiştirebilirsiniz. UI tasarımlarınızda rengin nasıl duracağını görmek için idealdir. |

<br>

| **3. Temiz Mod (İsim Gizli)** | **4. Bilgi Modu (İsim Açık)** |
|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/e7ece633-2807-4cf1-afe9-4a211fb72d52" width="250"> | <img src="https://github.com/user-attachments/assets/0368eb5b-78f4-4043-8d96-c1788b0740ad" width="250"> |
| **Odaklanma:** Bilgi (i) ikonuna tıklayarak yazı etiketini gizleyebilirsiniz. Bu özellik, dikkatinizi dağıtan yazıları kaldırıp sadece renk tonuna odaklanmanızı sağlar. | **Tanımlama:** Etiketi tekrar açarak seçilen rengin tam Flutter ismini (örn: Deep Purple Accent) görebilir ve seçiminizi doğrulayabilirsiniz. |

---

## ✨ Temel Özellikler

* **Anında Kopyalama:** Beğendiğiniz rengin Hex kodunu tek tıkla panoya (Clipboard) kopyalar.
* **Rastgele Üretici:** "Random" butonu ile sürpriz renk kombinasyonları keşfedin.
* **Şekil Değiştirici:** Renkleri ister Kare ister Daire formunda görüntüleyin.
* **Dinamik Tema:** Uygulama çubuğu ve arka plan, seçilen rengin tonuna göre otomatik olarak değişir.
* **Görünürlük Kontrolü:** Daha sade bir arayüz için renk isimlerini gizleyip açabilme özelliği.

## 🛠 Kullanılan Teknolojiler

* **Dil:** Dart
* **Framework:** Flutter
* **Paketler:** `fluttertoast`, `flutter/services`

## 🚀 Kurulum

Projeyi bilgisayarınıza indirmek ve çalıştırmak için terminale şu kodları yazın:

```bash
# 1. Depoyu klonlayın
git clone [https://github.com/Ranaey9/Color_Picker.git](https://github.com/Ranaey9/Color_Picker.git)

# 2. Proje klasörüne girin
cd Color_Picker

# 3. Paketleri yükleyin
flutter pub get

# 4. Uygulamayı çalıştırın
flutter run
