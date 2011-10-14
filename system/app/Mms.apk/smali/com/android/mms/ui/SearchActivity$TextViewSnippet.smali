.class public Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
.super Landroid/widget/TextView;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextViewSnippet"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sEllipsis:Ljava/lang/String;

.field private static sTypefaceHighlight:I


# instance fields
.field private mFullText:Ljava/lang/String;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mTargetString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "\u2026"

    sput-object v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    .line 89
    const-string v0, "Mms/TextViewSnippet"

    sput-object v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->TAG:Ljava/lang/String;

    .line 91
    const/4 v0, 0x1

    sput v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sTypefaceHighlight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 28
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 124
    .local v10, fullTextLower:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 126
    .local v21, targetStringLower:Ljava/lang/String;
    const/16 v20, 0x0

    .line 127
    .local v20, startPos:I
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v15

    .line 128
    .local v15, searchStringLength:I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    .line 130
    .local v5, bodyLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 131
    .local v11, m:Ljava/util/regex/Matcher;
    const/16 v24, 0x0

    move-object v0, v11

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 132
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v20

    .line 135
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->getPaint()Landroid/text/TextPaint;

    move-result-object v23

    .line 137
    .local v23, tp:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v16

    .line 138
    .local v16, searchStringWidth:F
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v22, v0

    .line 140
    .local v22, textFieldWidth:F
    const/16 v17, 0x0

    .line 141
    .local v17, snippetString:Ljava/lang/String;
    cmpl-float v24, v16, v22

    if-lez v24, :cond_3

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v24, v0

    add-int v25, v20, v15

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 187
    :goto_1
    :try_start_0
    new-instance v18, Landroid/text/SpannableString;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 189
    .local v18, spannable:Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 193
    :goto_2
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 194
    new-instance v24, Landroid/text/style/StyleSpan;

    sget v25, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sTypefaceHighlight:I

    invoke-direct/range {v24 .. v25}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->start()I

    move-result v25

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->end()I

    move-result v26

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 199
    .end local v18           #spannable:Landroid/text/SpannableString;
    :catch_0
    move-exception v24

    move-object/from16 v7, v24

    .line 200
    .local v7, e:Ljava/lang/IllegalArgumentException;
    sget-object v24, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->TAG:Ljava/lang/String;

    const-string v25, "SearchActivity: IllegalArgumentException"

    invoke-static/range {v24 .. v25}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :goto_3
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    goto/16 :goto_0

    .line 144
    :cond_3
    sget-object v24, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 145
    .local v8, ellipsisWidth:F
    const/high16 v24, 0x4000

    mul-float v24, v24, v8

    sub-float v22, v22, v24

    .line 147
    const/4 v14, -0x1

    .line 148
    .local v14, offset:I
    const/16 v19, -0x1

    .line 149
    .local v19, start:I
    const/4 v9, -0x1

    .line 154
    .local v9, end:I
    sget-object v24, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->TAG:Ljava/lang/String;

    const-string v25, "loop1"

    invoke-static/range {v24 .. v25}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 158
    const/16 v24, 0x0

    sub-int v25, v20, v14

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 159
    .local v13, newstart:I
    add-int v24, v20, v15

    add-int v24, v24, v14

    move v0, v5

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 161
    .local v12, newend:I
    move v0, v13

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    if-ne v12, v9, :cond_5

    .line 180
    :cond_4
    sget-object v24, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->TAG:Ljava/lang/String;

    const-string v25, "loop1"

    invoke-static/range {v24 .. v25}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 165
    :cond_5
    move/from16 v19, v13

    .line 166
    move v9, v12

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, candidate:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v24

    cmpl-float v24, v24, v22

    if-gtz v24, :cond_4

    .line 177
    const-string v24, "%s%s%s"

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    if-nez v19, :cond_6

    const-string v27, ""

    :goto_5
    aput-object v27, v25, v26

    const/16 v26, 0x1

    aput-object v6, v25, v26

    const/16 v26, 0x2

    if-ne v9, v5, :cond_7

    const-string v27, ""

    :goto_6
    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 179
    goto :goto_4

    .line 177
    :cond_6
    sget-object v27, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_5

    :cond_7
    sget-object v27, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_6

    .line 197
    .end local v6           #candidate:Ljava/lang/String;
    .end local v8           #ellipsisWidth:F
    .end local v9           #end:I
    .end local v12           #newend:I
    .end local v13           #newstart:I
    .end local v14           #offset:I
    .end local v19           #start:I
    .restart local v18       #spannable:Landroid/text/SpannableString;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "fullText"
    .parameter "target"

    .prologue
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, patternString:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    .line 218
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mFullText:Ljava/lang/String;

    .line 219
    iput-object p2, p0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->mTargetString:Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->requestLayout()V

    .line 221
    return-void
.end method
