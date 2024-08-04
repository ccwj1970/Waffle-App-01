
# 比利時鬆餅訂製應用程式

![Uploading Screenshot 2024-08-04 at 23.00.57.png…]()

這是一款可以訂製比利時鬆餅的應用程式。透過這個應用程式，使用者可以輕鬆選擇並定制自己喜愛的鬆餅配料和樣式。這個應用程式主要運用了以下技術知識：

## 學習重點

### Column 和 Row 運用
- **Column** 和 **Row** 是應用程式佈局的基本元素，用於垂直和水平排列元件。
  - **Column**：將元件垂直排列。
  - **Row**：將元件水平排列。
- 示例程式碼：
  ```dart
  Column(
    children: [
      Text('垂直排列1'),
      Text('垂直排列2'),
    ],
  );

  Row(
    children: [
      Text('水平排列1'),
      Text('水平排列2'),
    ],
  );
  ```

### Main Axis 和 Cross Axis 差別
- **Main Axis** 是指主軸方向，對於 **Column** 來說是垂直方向，對於 **Row** 來說是水平方向。
- **Cross Axis** 是指交叉軸方向，對於 **Column** 來說是水平方向，對於 **Row** 來說是垂直方向。
- 示例程式碼：
  ```dart
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('主軸和交叉軸範例'),
    ],
  );
  ```

### 如何套用Google Font
- 在應用程式中導入並使用 Google 字體，以增強視覺效果和字體美觀度。
- 示例程式碼：
  ```dart
  import 'package:google_fonts/google_fonts.dart';

  Text(
    '比利時鬆餅',
    style: GoogleFonts.dmSerifDisplay(
      textStyle: TextStyle(fontSize: 32, color: Colors.black),
    ),
  );
  ```

### 如何載入圖片
- 在應用程式中載入並顯示圖片，以提升用戶體驗。
- 示例程式碼：
  ```dart
  Image.asset('lib/images/waffle.png');
  ```

### 如何使用padding 製造間距
- 使用 **Padding** 小部件來創建元件之間的間距，以使介面更加美觀。
- 示例程式碼：
  ```dart
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text('鬆餅配料'),
  );
  ```

### 如何調整字體之大小、粗細
- 調整字體大小和粗細，以符合設計需求和提升閱讀體驗。
- 示例程式碼：
  ```dart
  Text(
    '訂製你的鬆餅',
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
  );
  ```

### 如何插入預設icon 進行大小、間距調整
- 使用預設的圖標並調整其大小和間距，以增強功能指示和視覺效果。
- 示例程式碼：
  ```dart
  Icon(
    Icons.favorite,
    size: 30.0,
    color: Colors.red,
  );
  ```

## 安裝與使用

1. 克隆此儲存庫到本地端：
   ```bash
   git clone https://github.com/your-username/waffle-app.git
   ```

2. 進入專案目錄並安裝依賴：
   ```bash
   cd waffle-app
   flutter pub get
   ```

3. 在模擬器或實際設備上運行應用程式：
   ```bash
   flutter run
   ```

## 主要功能

- **訂製比利時鬆餅**：選擇和添加不同的配料。
- **實時預覽**：即時顯示鬆餅訂製效果。
- **保存和分享**：保存訂製好的鬆餅圖片並分享給好友。

## 頁面介紹

### IntroPage

以下是 `IntroPage` 的詳細介紹及程式碼範例：

```dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // 版本： google_fonts: ^6.2.1
import 'package:waffle_app_project_01/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(143, 255, 192, 171),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 左右
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 上下
          children: [
            const SizedBox(height: 20),

            // shop name
            Text(
              "WAFFLE",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 32,
                color: Color.fromARGB(255, 245, 233, 209),
                letterSpacing: 6,
              ),
            ),

            const SizedBox(height: 0),

            // icon
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Image.asset('lib/images/waffle copy 2.png'),
            ),
            const SizedBox(height: 0),

            // title
            Text(
              "THE TASTE OF BELGIAN FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 40,
                color: Color.fromARGB(255, 245, 233, 209),
                letterSpacing: 4.5,
              ),
            ),
            const SizedBox(height: 0),

            // subtitle
            Text(
              "Feel the taste of the most popular Belgian dessert    from anywhere and anytime",
              style: TextStyle(
                color: Color.fromARGB(255, 241, 240, 227),
                height: 2,
              ),
            ),
            const SizedBox(height: 20),

            // get started button
            MyButton(text: "Get Started")
          ],
        ),
      ),
    );
  }
}
```



## Medium
https://medium.com/p/8d9aeb194f3a/edit
