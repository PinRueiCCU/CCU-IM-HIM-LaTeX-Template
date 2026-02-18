# 國立中正大學資訊管理研究所／醫療資訊管理研究所論文LaTeX模板

這份 README 是給第一次使用 LaTeX 的人看的。
你不用先懂很多理論，只要照著步驟做，就可以把論文編譯成 `main.pdf`。

## 1. 這個模板可以做什麼
- 準備好論文常見結構：封面、摘要、目錄、章節、參考文獻、附錄。
- 預設格式對齊 `format.pdf`。
- 文獻系統使用 `biblatex-apa` + `biber`。

## 2. 要先準備的東西

### 工具
需要能在終端機執行這兩個指令：
- `xelatex`
- `biber`

### 字型
模板會檢查字型，缺少會直接停止編譯：
- 英文：`Times New Roman`
- 中文：`BiauKai` 或 `DFKai-SB`

## 3. 最速上手流程
1. 打開這個專案資料夾。
2. 編輯 `ccusetup.tex`，把題目、姓名、教授、日期改成你的資料。
3. 編輯章節內容（在 `sections/` 資料夾）。
4. 在專案根目錄執行下面四行：

```bash
xelatex main.tex
biber main
xelatex main.tex
xelatex main.tex
```

5. 編譯成功後，會得到 `main.pdf`。

## 4. 幾乎會碰的檔案
- `ccusetup.tex`：封面與基本資料。
- `frontpages/acknowledgement.tex`：誌謝。
- `frontpages/abstract.tex`：中英文摘要。
- `sections/*.tex`：各章正文。
- `backpages/references.bib`：文獻資料。
- `backpages/appendix.tex`：附錄。

## 5. 參考文獻怎麼寫

### 最重要的兩個規則
- 每一筆文獻都要有 `langid`。
- 中文文獻建議加 `sortkey`（用來控制排序）。

### 範例

```bibtex
@article{chen2021smarthealth,
  author  = {作者一 and 作者二},
  title   = {文章標題},
  journal = {文章來源},
  year    = {年份},
  langid  = {語言},
  sortkey = {00-00-00-XXXX}
}
```

### 編譯提醒
你只要改過 `.bib`，就一定要重新跑完整四步：
`xelatex -> biber -> xelatex -> xelatex`。

## 6. 可選功能（預設關閉）

### 顯示摘要關鍵字
在 `main.tex` 打開：

```tex
\showkeywords
```

若要關閉：

```tex
\hidekeywords
```

### 顯示符號列表
在 `main.tex` 取消註解：

```tex
\input{frontpages/denotation}
```

### 產生書背與封底
在 `main.tex` 加上：

```tex
\makespine
\makebackcover
```

## 7. 版面
模板已經設定好：
- A4 紙張。
- 四邊邊界 `2cm`。
- 頁碼距底邊 `1cm`。
- 正文 12pt、1.5 倍行距。
- 章標題為「第X章、標題」。
- 圖表編號使用 `1.1` 這種點號格式。

## 8. 常見錯誤與處理方式

### 錯誤：`Please (re)run Biber on the file: main`
做法：重新執行完整四步編譯。

### 錯誤：找不到字型
做法：安裝 `Times New Roman` 與 `BiauKai/DFKai-SB`，再編譯。

### 目錄頁碼不正確
做法：再跑 1 至 2 次 `xelatex main.tex`。

### 文中有引用 但參考文獻清單是空的
做法：檢查 `.bib` 條目是否完整，特別是 `langid`。

## 9. 專案結構一覽

```text
.
├── main.tex
├── ccuthesis.cls
├── ccusetup.tex
├── format.pdf
├── frontpages/
├── sections/
├── backpages/
│   ├── appendix.tex
│   └── references.bib
└── figures/
```

## 10. 清理中間檔
如果資料夾看起來很亂，可以刪除這些中間檔：
- `*.aux` `*.bcf` `*.bbl` `*.blg`
- `*.log` `*.out` `*.run.xml`
- `*.toc` `*.lof` `*.lot`

<<<<<<< HEAD
## 11. 致謝
本模板是基於 [anlit75/CCU-Thesis-LaTeX-Template](https://github.com/anlit75/CCU-Thesis-LaTeX-Template)，特別感謝 [anlit75](https://github.com/anlit75) 的貢獻，才有這個模板的誕生。

## 12. 授權
=======
## 11. 授權
>>>>>>> c30a848 (Initial public release: CCU thesis LaTeX template)
本專案使用 `MIT License`，請見 `LICENSE`。
