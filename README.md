# Mukun Jin's Blog

基于 Hexo 与 NexT 主题构建的个人博客，部署于 GitHub Pages。

## 技术栈

- Hexo 8
- NexT 主题（Gemini Scheme）
- Node.js

## 目录结构

```
.
├── source/
│   ├── _posts/          # 文章源文件（Markdown）
│   ├── categories/      # 分类页面
│   └── images/          # 图片资源
├── _config.yml          # Hexo 主配置
├── _config.next.yml     # NexT 主题配置
└── package.json
```

## 本地运行

```bash
npm install
npx hexo server
```

默认在 `http://localhost:4000` 启动。

## 写作

新建文章：

```bash
npx hexo new post "article-title"
```

在 `source/_posts/` 下编辑对应的 Markdown 文件。Front-matter 示例：

```yaml
---
title: 文章标题
date: 2026-06-16
categories: 分类名
---
```

## 部署

```bash
npm run build
npm run deploy
```

部署目标配置于 `_config.yml` 的 `deploy` 字段，指向 `gh-pages` 分支。

## 主要配置

| 文件 | 说明 |
|------|------|
| `_config.yml` | 网站标题、描述、URL、部署目标 |
| `_config.next.yml` | 主题外观、菜单、侧边栏、动画、社交链接 |
