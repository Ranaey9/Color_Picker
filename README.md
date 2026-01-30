# 🎨 Color Picker Uygulaması

Bu proje, hem **Web** hem de **Mobil** uyumlu, kullanıcıların farklı renk tonlarını keşfetmesini, rastgele renkler üretmesini ve renk kodlarını görüntülemesini sağlayan modern bir **Flutter** uygulamasıdır.

Kullanıcı dostu arayüzü ile renklerin isimlerini öğrenebilir veya tasarımınızda kullanmak üzere kodlarını kopyalayabilirsiniz.

## 📱 Ekran Görüntüleri ve Özellikler

Uygulamanın temel özellikleri aşağıda görselleştirilmiştir:

| **1. Ana Arayüz ve Seçim** | **2. Şekil Değiştirme** |
|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/dfc856f9-5023-4462-9687-f09a98ce8396" width="250"> | <img src="https://github.com/user-attachments/assets/919d1bbe-a6f9-4143-b8a3-b5852aa5f16b" width="250"> |
| **Özellik:** Kullanıcılar açılır menüden herhangi bir rengi seçebilir. Seçilen renk ana odak noktası olarak görüntülenirken, arka plan o rengin daha yumuşak bir tonuna uyarlanır. | **Özellik:** Renk gösterimi, sağdaki kutucuk kullanılarak **Kare** veya **Daire** arasında anlık olarak değiştirilebilir. |

<br>

| **3. İsmi Gizle (Hide Name)** | **4. İsmi Göster (Show Name)** |
|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/87017207-5888-4297-8cb8-f87a9e18db56" width="250"> | <img src="https://github.com/user-attachments/assets/092771ee-2109-4669-8cfd-d1180169c5b2" width="250"> |
| **Özellik:** Renk üzerine tıklandığında veya "Hide Name" seçildiğinde yazı etiketi gizlenir, böylece sadece renge odaklanılır. | **Özellik:** "Show Name" özelliği, rengin tam ismini (örn: Green Accent) kolayca tanımanız için geri getirir. |

---

## ✨ Özellikler

* **Geniş Renk Yelpazesi:** Standart Material renklerinin yanı sıra özel tonlar (Altın, Somon, Nane vb.) içerir.
* **Rastgele Mod:** "Random" butonu ile sürpriz renkler keşfedin.
* **Dinamik Tema:** Seçilen renge göre uygulamanın genel teması ve arka planı anlık olarak değişir.
* **Şekil Özelleştirme:** Renk paletini ister kare ister daire olarak görüntüleyin.
* **Çoklu Platform:** Tek kod tabanı ile hem iOS, hem Android hem de Web tarayıcılarında çalışır.

## 🛠 Kullanılan Teknolojiler

* **Dil:** Dart
* **Framework:** Flutter
* **Paketler:** `fluttertoast` (Kopyalama mesajları için), `flutter/services` (Clipboard işlemleri için).

## 🚀 Kurulum ve Çalıştırma

Projeyi bilgisayarınıza klonlayın ve aşağıdaki komutlarla çalıştırın:

```bash
# Projeyi klonla
git clone [https://github.com/Ranaey9/Color_Picker.git](https://github.com/Ranaey9/Color_Picker.git)

# Proje klasörüne git
cd Color_Picker

# Gerekli paketleri yükle
flutter pub get

# Uygulamayı çalıştır
flutter run
