.class public Landroid/webkit/HtmlComposerInputConnection;
.super Ljava/lang/Object;
.source "HtmlComposerInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR_BLUE:I = -0xf0001

.field private static final BACKGROUND_COLOR_GREEN:I = -0x993256

.field private static final BACKGROUND_COLOR_PURPLE:I = -0x777701

.field private static final BACKGROUND_COLOR_SKYBLUE:I = -0x604933

.field static final COMPOSING:Ljava/lang/Object; = null

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerInputConnection"


# instance fields
.field final MAX_SPANS:I

.field private bBeginBatchEdit:Z

.field bShadeColor:Z

.field composingEnd:I

.field composingStart:I

.field curSelEnd:I

.field curSelStart:I

.field currCompText:Ljava/lang/CharSequence;

.field isInComposingState:Z

.field private mBGColorSpans:[Landroid/text/style/BackgroundColorSpan;

.field private mBackGroundColorSpan:[I

.field mBatchEditNesting:I

.field private mColorSpans:[Landroid/text/style/ForegroundColorSpan;

.field private mCursorPosition:I

.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field mTargetView:Landroid/webkit/HtmlComposerView;

.field spanData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    new-instance v0, Landroid/webkit/ComposingText;

    invoke-direct {v0}, Landroid/webkit/ComposingText;-><init>()V

    sput-object v0, Landroid/webkit/HtmlComposerInputConnection;->COMPOSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .registers 5
    .parameter "targetView"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 61
    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 62
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 63
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 66
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->bShadeColor:Z

    .line 67
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    .line 77
    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mCursorPosition:I

    .line 78
    const/16 v0, 0xff

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->MAX_SPANS:I

    .line 85
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 96
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 97
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    .line 98
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    .line 99
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    .line 100
    return-void
.end method

.method private replaceTextToHtml(Ljava/lang/CharSequence;IZ)V
    .registers 21
    .parameter "text"
    .parameter "newCursorPosition"
    .parameter "composing"

    .prologue
    const/4 v15, 0x0

    const/4 v14, -0x1

    const-string v16, "HtmlComposerInputConnection"

    .line 471
    const-string v11, "HtmlComposerInputConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "replaceTextToHtml called here"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v11, v0

    if-nez v11, :cond_2b

    .line 556
    :cond_2a
    :goto_2a
    return-void

    .line 476
    :cond_2b
    const/4 v9, 0x0

    .line 478
    .local v9, sp:Landroid/text/Spanned;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    move v5, v0

    .line 479
    .local v5, a:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    move v6, v0

    .line 481
    .local v6, b:I
    if-ne v5, v14, :cond_44

    if-ne v6, v14, :cond_44

    .line 482
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move v5, v0

    .line 483
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    move v6, v0

    .line 487
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/util/Vector;->clear()V

    .line 488
    if-eqz p1, :cond_2a

    .line 490
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v11, v0

    if-eqz v11, :cond_ec

    .line 491
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v9, v0

    .line 492
    invoke-static {v9}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v7

    .line 493
    .local v7, htmltext:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->getSpanData(Landroid/text/Spanned;)V

    .line 509
    :cond_64
    :goto_64
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v11, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    move-object v13, v0

    move-object v0, v11

    move-object v1, v12

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/HtmlComposerView;->insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkit/WebView$SelectionOffset;

    move-result-object v8

    .line 512
    .local v8, m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    const-string v11, "HtmlComposerInputConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Selection offset value start "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",End:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    if-eqz p3, :cond_10e

    .line 523
    iget v11, v8, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    add-int/2addr v11, v5

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 524
    iget v11, v8, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    add-int/2addr v11, v5

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 532
    :goto_b8
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    add-int/2addr v5, v11

    .line 534
    if-lez p2, :cond_119

    .line 535
    const/4 v11, 0x1

    sub-int v11, v5, v11

    add-int v11, v11, p2

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 548
    :goto_c9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move v11, v0

    if-gez v11, :cond_d5

    .line 549
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 551
    :cond_d5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move v11, v0

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 552
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_2a

    .line 497
    .end local v7           #htmltext:Ljava/lang/String;
    .end local v8           #m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    :cond_ec
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 498
    .restart local v7       #htmltext:Ljava/lang/String;
    if-eqz p3, :cond_64

    .line 499
    new-instance v10, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .line 500
    .local v10, tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v15, v10, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 501
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    iput v11, v10, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 502
    iput-boolean v15, v10, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    move-object v11, v0

    invoke-virtual {v11, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_64

    .line 528
    .end local v10           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    .restart local v8       #m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    :cond_10e
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 529
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    goto :goto_b8

    .line 537
    :cond_119
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    sub-int v11, v5, v11

    add-int v11, v11, p2

    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    goto :goto_c9
.end method

.method private updateInputMethodSelection()V
    .registers 9

    .prologue
    const-string v7, "HtmlComposerInputConnection"

    const-string v6, " "

    .line 117
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_11

    .line 118
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/webkit/HtmlComposerView;->updateIMSelectionToEditor(II)V

    .line 120
    :cond_11
    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v1, :cond_1e

    .line 121
    const-string v1, "HtmlComposerInputConnection"

    const-string/jumbo v1, "return without updateInputMethodSelection as  bBeginBatchEdit is TRUE.........."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_1d
    return-void

    .line 124
    :cond_1e
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 125
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_78

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 126
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v5, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 127
    const-string v1, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInputMethodSelection curSelStart curSelEnd composingStart, composingEnd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_78
    const-string v1, "HtmlComposerInputConnection"

    const-string/jumbo v1, "updateInputMethodSelection exit"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 149
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 150
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    .line 151
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginBatchEdit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v3
.end method

.method public clearMetaKeyStates(I)Z
    .registers 4
    .parameter "arg0"

    .prologue
    .line 156
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "clearMetaKeyStates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 4
    .parameter "arg0"

    .prologue
    .line 161
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "commitCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 7
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v3, 0x0

    .line 166
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_29

    move v0, v3

    .line 170
    :goto_28
    return v0

    .line 168
    :cond_29
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    .line 169
    invoke-direct {p0, p1, p2, v3}, Landroid/webkit/HtmlComposerInputConnection;->replaceTextToHtml(Ljava/lang/CharSequence;IZ)V

    .line 170
    const/4 v0, 0x1

    goto :goto_28
.end method

.method public deleteSurroundingText(II)Z
    .registers 7
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    const/4 v3, 0x0

    .line 174
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSurroundingText left "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rgh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_29

    move v0, v3

    .line 184
    :goto_28
    return v0

    .line 177
    :cond_29
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HtmlComposerView;->deleteSurroundingText(II)V

    .line 178
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 179
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-gez v0, :cond_39

    .line 180
    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 182
    :cond_39
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 183
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 184
    const/4 v0, 0x1

    goto :goto_28
.end method

.method public endBatchEdit()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 189
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endBatchEdit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    .line 191
    return v3
.end method

.method public finishComposingText()Z
    .registers 4

    .prologue
    .line 195
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishComposingText  composingStart   composingEnd  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 197
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .registers 7
    .parameter "reqModes"

    .prologue
    .line 202
    const-string v3, "HtmlComposerInputConnection"

    const-string v4, "getCursorCapsMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 205
    .local v1, arbOffset:I
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, textBeforCursor:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 208
    .local v0, a:I
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    return v3
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 12
    .parameter "request"
    .parameter "flags"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    const-string v7, "HtmlComposerInputConnection"

    .line 213
    const-string v4, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExtractedText request.hintMaxChars "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "request.hintMaxLines "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v4, :cond_31

    move-object v4, v8

    .line 247
    :goto_30
    return-object v4

    .line 216
    :cond_31
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->beginBatchEdit()Z

    .line 217
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 218
    .local v1, outText:Landroid/view/inputmethod/ExtractedText;
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {p0, v4, v6}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, textBeforCursor:Ljava/lang/String;
    const/16 v4, 0xf

    invoke-virtual {p0, v4, v6}, Landroid/webkit/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, textAfetrCursor:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 223
    iget-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6a

    iget-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const-string v5, ""

    if-ne v4, v5, :cond_6c

    :cond_6a
    move-object v4, v8

    .line 224
    goto :goto_30

    .line 226
    :cond_6c
    iput v6, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 227
    iput v6, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 228
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 229
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 231
    const/4 v4, -0x1

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 235
    const-string v4, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExtractedText outText.selectionStart "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " outText.selectionEnd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "outText.startOffset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->endBatchEdit()Z

    .line 238
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v4, :cond_c1

    .line 239
    const-string v4, "HtmlComposerInputConnection"

    const-string v4, "getExtractedText return without update"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 240
    goto/16 :goto_30

    .line 243
    :cond_c1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 244
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_d4

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 245
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v4, v6, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    :cond_d4
    move-object v4, v1

    .line 247
    goto/16 :goto_30
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .registers 4
    .parameter "flags"

    .prologue
    .line 251
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "getSelectedText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method getSpanData(Landroid/text/Spanned;)V
    .registers 11
    .parameter "text"

    .prologue
    const-class v8, Landroid/text/style/CharacterStyle;

    .line 437
    iget-object v6, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 438
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v3

    .line 440
    .local v3, spanLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v3, :cond_60

    .line 441
    const-class v6, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v3, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 442
    .local v2, next:I
    const-class v6, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v2, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/CharacterStyle;

    .line 444
    .local v4, style:[Landroid/text/style/CharacterStyle;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1d
    array-length v6, v4

    if-ge v1, v6, :cond_5e

    .line 445
    aget-object v6, v4, v1

    instance-of v6, v6, Landroid/text/style/BackgroundColorSpan;

    if-eqz v6, :cond_44

    .line 446
    new-instance v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v5, p0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .line 447
    .local v5, tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 448
    iput v2, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 454
    aget-object v6, v4, v1

    check-cast v6, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v6}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v6

    const/high16 v7, 0x100

    add-int/2addr v6, v7

    iput v6, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->highLightColor:I

    .line 455
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 456
    iget-object v6, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 459
    .end local v5           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_44
    aget-object v6, v4, v1

    instance-of v6, v6, Landroid/text/style/UnderlineSpan;

    if-eqz v6, :cond_5b

    .line 460
    new-instance v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v5, p0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .line 461
    .restart local v5       #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 462
    iput v2, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 463
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 464
    iget-object v6, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 444
    .end local v5           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 440
    :cond_5e
    move v0, v2

    goto :goto_c

    .line 468
    .end local v1           #j:I
    .end local v2           #next:I
    .end local v4           #style:[Landroid/text/style/CharacterStyle;
    :cond_60
    return-void
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 12
    .parameter "n"
    .parameter "flags"

    .prologue
    const-string v8, ""

    .line 257
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v5, :cond_a

    const-string v5, ""

    move-object v5, v8

    .line 272
    :goto_9
    return-object v5

    .line 258
    :cond_a
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v6, Landroid/webkit/WebView$CursorDirection;->FORWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v5, p1, v6}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, retText:Ljava/lang/String;
    if-eqz v4, :cond_34

    .line 260
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 261
    .local v0, arr:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2e

    .line 262
    aget-char v1, v0, v2

    .line 263
    .local v1, chrVal:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 264
    const/16 v5, 0x20

    aput-char v5, v0, v2

    .line 261
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 267
    .end local v1           #chrVal:C
    :cond_2e
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 268
    .local v3, rText:Ljava/lang/String;
    move-object v4, v3

    .line 270
    .end local v0           #arr:[C
    .end local v2           #i:I
    .end local v3           #rText:Ljava/lang/String;
    :cond_34
    const-string v5, "HtmlComposerInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTextAfterCursor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " flags "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 272
    if-nez v4, :cond_69

    const-string v5, ""

    move-object v5, v8

    goto :goto_9

    :cond_69
    move-object v5, v4

    goto :goto_9
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 16
    .parameter "n"
    .parameter "flags"

    .prologue
    const/4 v10, 0x1

    const-string v12, "\n"

    const-string v11, ""

    .line 276
    iget-object v8, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v8, :cond_d

    const-string v8, ""

    move-object v8, v11

    .line 305
    :goto_c
    return-object v8

    .line 277
    :cond_d
    iget-object v8, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v9, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v8, p1, v9}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, retText:Ljava/lang/String;
    if-eqz v6, :cond_37

    .line 279
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 280
    .local v0, arr:[C
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_31

    .line 281
    aget-char v1, v0, v4

    .line 282
    .local v1, chrVal:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 283
    const/16 v8, 0x20

    aput-char v8, v0, v4

    .line 280
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 286
    .end local v1           #chrVal:C
    :cond_31
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    .line 287
    .local v5, rText:Ljava/lang/String;
    move-object v6, v5

    .line 290
    .end local v0           #arr:[C
    .end local v4           #i:I
    .end local v5           #rText:Ljava/lang/String;
    :cond_37
    if-nez v6, :cond_3c

    const-string v8, ""

    move-object v6, v11

    .line 291
    :cond_3c
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, p1, :cond_85

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-ge v8, v9, :cond_85

    .line 292
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v2, p1, v8

    .line 293
    .local v2, diffLen:I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .local v7, tempString:Ljava/lang/StringBuilder;
    const-string v8, "\n"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const/4 v3, 0x1

    .local v3, extCnt:I
    :goto_5d
    sub-int v8, v2, v10

    if-ge v3, v8, :cond_69

    .line 296
    const-string v8, "X"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 298
    :cond_69
    if-le v2, v10, :cond_70

    .line 299
    const-string v8, "\n"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_70
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 303
    .end local v2           #diffLen:I
    .end local v3           #extCnt:I
    .end local v7           #tempString:Ljava/lang/StringBuilder;
    :cond_85
    const-string v8, "HtmlComposerInputConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTextBeforeCursor "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " n "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " flags "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 305
    if-nez v6, :cond_bb

    const-string v8, ""

    move-object v8, v11

    goto/16 :goto_c

    :cond_bb
    move-object v8, v6

    goto/16 :goto_c
.end method

.method public performContextMenuAction(I)Z
    .registers 6
    .parameter "id"

    .prologue
    .line 309
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performContextMenuAction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, retVal:Z
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_25

    const/4 v1, 0x0

    move v0, v1

    .line 312
    :goto_20
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_2d

    .line 317
    :goto_24
    return v0

    .line 311
    :cond_25
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, p1}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v1

    move v0, v1

    goto :goto_20

    .line 314
    :cond_2d
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 315
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 316
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto :goto_24
.end method

.method public performEditorAction(I)Z
    .registers 19
    .parameter "editorAction"

    .prologue
    .line 324
    const-string v2, "HtmlComposerInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performEditorAction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v2, v0

    if-nez v2, :cond_25

    const/4 v2, 0x0

    .line 344
    :goto_24
    return v2

    .line 327
    :cond_25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 328
    .local v3, eventTime:J
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 333
    new-instance v5, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x1

    const/16 v11, 0x42

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x16

    move-wide v8, v3

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 341
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 342
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 344
    const/4 v2, 0x1

    goto :goto_24
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5
    .parameter "action"
    .parameter "data"

    .prologue
    .line 348
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v1, "performPrivateCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public removeComposingSpan()V
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 109
    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 110
    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 111
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v1, "removeComposingSpan called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_12

    .line 114
    :goto_11
    return-void

    .line 113
    :cond_12
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    goto :goto_11
.end method

.method public reportFullscreenMode(Z)Z
    .registers 3
    .parameter "enabled"

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    const/16 v9, 0x16

    const/16 v8, 0x13

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v10, "HtmlComposerInputConnection"

    .line 357
    const-string v4, "HtmlComposerInputConnection"

    const-string/jumbo v4, "sendKeyEvent"

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v4, :cond_16

    move v4, v6

    .line 421
    :goto_15
    return v4

    .line 360
    :cond_16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eq v4, v7, :cond_50

    move v0, v7

    .line 361
    .local v0, down:Z
    :goto_1d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 362
    .local v2, keyCode:I
    const-string v4, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendKeyEvent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-lt v2, v8, :cond_74

    if-gt v2, v9, :cond_74

    .line 366
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v3

    .line 367
    .local v3, selctionAtBoundry:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_52

    .line 368
    if-eqz v0, :cond_4e

    .line 369
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4, v2}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_4e
    move v4, v7

    .line 370
    goto :goto_15

    .end local v0           #down:Z
    .end local v2           #keyCode:I
    .end local v3           #selctionAtBoundry:I
    :cond_50
    move v0, v6

    .line 360
    goto :goto_1d

    .line 372
    .restart local v0       #down:Z
    .restart local v2       #keyCode:I
    .restart local v3       #selctionAtBoundry:I
    :cond_52
    if-nez v3, :cond_63

    if-eq v2, v9, :cond_5a

    const/16 v4, 0x14

    if-ne v2, v4, :cond_63

    .line 373
    :cond_5a
    if-eqz v0, :cond_61

    .line 374
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4, v2}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_61
    move v4, v7

    .line 375
    goto :goto_15

    .line 377
    :cond_63
    if-ne v3, v7, :cond_d2

    if-eq v2, v8, :cond_6b

    const/16 v4, 0x15

    if-ne v2, v4, :cond_d2

    .line 378
    :cond_6b
    if-eqz v0, :cond_72

    .line 379
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4, v2}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_72
    move v4, v7

    .line 380
    goto :goto_15

    .line 384
    .end local v3           #selctionAtBoundry:I
    :cond_74
    const/16 v4, 0x3d

    if-ne v4, v2, :cond_8a

    .line 385
    if-eqz v0, :cond_88

    .line 386
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v5, "InsertText"

    const-string v6, "    "

    invoke-virtual {v4, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4, v7}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    :cond_88
    move v4, v7

    .line 389
    goto :goto_15

    .line 391
    :cond_8a
    const/16 v4, 0x42

    if-ne v2, v4, :cond_a4

    .line 392
    if-eqz v0, :cond_a1

    .line 393
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v5, "InsertText"

    const-string v6, "\n"

    invoke-virtual {v4, v5, v6}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 395
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    :cond_a1
    move v4, v7

    .line 397
    goto/16 :goto_15

    .line 399
    :cond_a4
    const/16 v4, 0x43

    if-ne v2, v4, :cond_d2

    .line 400
    if-eqz v0, :cond_cc

    .line 401
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 402
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v5, ""

    invoke-virtual {v4, v5, v7}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 403
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    sub-int/2addr v4, v7

    iput v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 404
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-gez v4, :cond_cf

    move v4, v6

    :goto_be
    iput v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 405
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 406
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 407
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    :cond_cc
    move v4, v7

    .line 409
    goto/16 :goto_15

    .line 404
    :cond_cf
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    goto :goto_be

    .line 412
    :cond_d2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 413
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 414
    .local v1, h:Landroid/os/Handler;
    if-eqz v1, :cond_e6

    .line 416
    const/16 v4, 0x3f3

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_e6
    move v4, v7

    .line 421
    goto/16 :goto_15
.end method

.method public setComposingRegion(II)Z
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 559
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setComposingRegion start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_29

    const/4 v0, 0x0

    .line 565
    :goto_28
    return v0

    .line 561
    :cond_29
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HtmlComposerView;->setComposingRegion(II)V

    .line 562
    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 563
    iput p2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 564
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 565
    const/4 v0, 0x1

    goto :goto_28
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 7
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v3, 0x1

    .line 425
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    .line 426
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setComposingText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_2c

    if-nez p1, :cond_2e

    :cond_2c
    const/4 v0, 0x0

    .line 433
    :goto_2d
    return v0

    .line 429
    :cond_2e
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    .line 430
    invoke-direct {p0, p1, p2, v3}, Landroid/webkit/HtmlComposerInputConnection;->replaceTextToHtml(Ljava/lang/CharSequence;IZ)V

    .line 432
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v3}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    move v0, v3

    .line 433
    goto :goto_2d
.end method

.method public setSelection(II)Z
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 569
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSelection start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_29

    const/4 v0, 0x0

    .line 575
    :goto_28
    return v0

    .line 571
    :cond_29
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 572
    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 573
    iput p2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 574
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 575
    const/4 v0, 0x1

    goto :goto_28
.end method

.method public setTargetNull()V
    .registers 3

    .prologue
    .line 103
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "HtmlComposerInputConnection setTargetNull()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 105
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 106
    return-void
.end method

.method public updateInputMethodSelectionWithRandom()V
    .registers 7

    .prologue
    .line 138
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 139
    .local v1, randm:Ljava/util/Random;
    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 140
    .local v0, randNum:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v2

    .line 141
    .local v2, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 142
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 143
    const-string v3, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateInputMethodSelection curSelStart curSelEnd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 145
    return-void
.end method
