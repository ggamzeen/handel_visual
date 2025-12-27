# Handel Ses Görselleştirme

Bu proje, MATLAB'ın hazır `handel.mat` ses örneğini kullanarak iki farklı görselleştirme üretir:

## 🎬 Dalga Animasyonu
- Ses dalgası zaman ekseninde hareketli olarak gösterilir.
- Animasyon MATLAB figür penceresinde oynatılır.

## 🌆 Şehir Silüeti (Frekans Spektrumu)
- Fourier dönüşümü ile sesin frekans bileşenleri çıkarılır.
- Çıktı, şehir silüetine benzeyen bir bar grafiği şeklinde gösterilir.
- Sonuç `figures/sehir_silueti.png` dosyasına kaydedilir.

## Kullanım
1. `src/handel_visual.m` dosyasını çalıştırın.
2. Ses otomatik çalınır.
3. Dalga animasyonu ve frekans spektrumu görselleri üretilir.

