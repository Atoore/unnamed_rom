.class public Landroid/webkit/HtmlComposerView;
.super Landroid/webkit/WebView;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtmlComposerView$1;,
        Landroid/webkit/HtmlComposerView$InsertionPosition;,
        Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;,
        Landroid/webkit/HtmlComposerView$MenuHandler;
    }
.end annotation


# static fields
.field public static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_ALL:I = 0x1020409

.field public static final ID_CUT:I = 0x1020020

.field private static final ID_CUT_ALL:I = 0x1020408

.field public static final ID_PASTE:I = 0x1020022

.field public static final ID_PASTE_CLIPBOARD:I = 0x102040a

.field private static final ID_REDO:I = 0x102002d

.field public static final ID_SELECT_ALL:I = 0x102001f

.field public static final ID_START_SELECTION:I = 0x1020028

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field private static final ID_UNDO:I = 0x102002c

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerView"


# instance fields
.field private defaultLoadString:Ljava/lang/String;

.field private ignoreMaxLength:Z

.field imeOptions:I

.field private isContextMenuVisible:Z

.field private isInComposingState:Z

.field private isViewInFocus:Z

.field mAccumlationLength:I

.field mCurHtmlLength:I

.field private mCurSelEnd:I

.field private mCurSelStart:I

.field private mEmojiIsActive:Z

.field private mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

.field private mInput:Landroid/text/method/TextKeyListener;

.field private mIsTouchedCursor:Z

.field private mKeyIsLongPressed:Z

.field private mMaxHtmlLength:I

.field private mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

.field private mShiftKeyIsPressed:Z

.field private mSymKeyIsPressed:Z

.field private mViewWidth:I

.field private prevSpanComposerText:Ljava/lang/String;

.field private prevlen:I

.field private spanComposerText:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 63
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 64
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 65
    const v0, -0x7fffff01

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 66
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 67
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 68
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 69
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 70
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 73
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 74
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 75
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 76
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 77
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 78
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 79
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 81
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 83
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 84
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 88
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 89
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 101
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 64
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 65
    const v0, -0x7fffff01

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 66
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 67
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 68
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 69
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 70
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 73
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 74
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 75
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 76
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 77
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 78
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 79
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 81
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 83
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 84
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 88
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 89
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 106
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 64
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 65
    const v0, -0x7fffff01

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 66
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 67
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 68
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 69
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 70
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 73
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 74
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 75
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 76
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 77
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 78
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 79
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 81
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 83
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 84
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 88
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 89
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 111
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 63
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 64
    const-string v1, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 65
    const v1, -0x7fffff01

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 66
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 67
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 68
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 69
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 70
    const v1, 0x186a0

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 73
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 74
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 75
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 76
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 77
    iput v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 78
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 79
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 80
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 81
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 83
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 84
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 88
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 89
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 116
    invoke-direct {p0, p2}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, data:Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "data"
    .parameter "mimeType"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 124
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 125
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 126
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 127
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->setSoundEffectsEnabled(Z)V

    .line 129
    new-instance v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 132
    const-string v1, "htmlcomposer"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HtmlComposerView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 135
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v6, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 136
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 137
    new-instance v0, Landroid/webkit/HtmlComposerInputConnection;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerInputConnection;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 138
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/HtmlComposerView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/HtmlComposerView;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/webkit/HtmlComposerView;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "src"
    .parameter "dst"

    .prologue
    const/4 v6, 0x0

    .line 559
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 560
    .local v3, source:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 562
    .local v4, target:Ljava/io/FileOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 563
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 564
    .local v2, i:I
    :goto_10
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_23

    .line 565
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1b} :catch_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_2f

    goto :goto_10

    .line 574
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_1c
    move-exception v5

    move-object v1, v5

    .line 575
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v5, v6

    .line 579
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_22
    return v5

    .line 567
    .restart local v0       #buffer:[B
    .restart local v2       #i:I
    .restart local v3       #source:Ljava/io/FileInputStream;
    .restart local v4       #target:Ljava/io/FileOutputStream;
    :cond_23
    if-eqz v3, :cond_28

    .line 568
    :try_start_25
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 570
    :cond_28
    if-eqz v4, :cond_2d

    .line 571
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2d} :catch_1c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2d} :catch_2f

    .line 573
    :cond_2d
    const/4 v5, 0x1

    goto :goto_22

    .line 577
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_2f
    move-exception v5

    move-object v1, v5

    .line 578
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v5, v6

    .line 579
    goto :goto_22
.end method

.method private getLoadableContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "filePath"

    .prologue
    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .local v1, bufer:Ljava/lang/StringBuilder;
    :try_start_5
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 605
    .local v4, fstream:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 606
    .local v5, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 609
    .local v0, br:Ljava/io/BufferedReader;
    :goto_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, strLine:Ljava/lang/String;
    if-eqz v6, :cond_44

    .line 611
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_23

    goto :goto_19

    .line 625
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v6           #strLine:Ljava/lang/String;
    :catch_23
    move-exception v7

    move-object v3, v7

    .line 626
    .local v3, ep:Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " HtmlComposerView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 627
    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .end local v3           #ep:Ljava/lang/Exception;
    :goto_43
    return-object v7

    .line 613
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #strLine:Ljava/lang/String;
    :cond_44
    :try_start_44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, data:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 617
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 618
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 619
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v7

    if-nez v7, :cond_5d

    .line 621
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5d} :catch_23

    :cond_5d
    move-object v7, v2

    .line 623
    goto :goto_43
.end method

.method private isInsertionAllowed(I)Z
    .registers 7
    .parameter "insertionLength"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 632
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    if-eqz v1, :cond_8

    move v1, v3

    .line 648
    :goto_7
    return v1

    .line 636
    :cond_8
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x3

    .line 637
    .local v0, avoidLength:I
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 639
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    if-ge v1, v0, :cond_1a

    move v1, v3

    .line 641
    goto :goto_7

    .line 645
    :cond_1a
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 646
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->htmlLength()I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 648
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    if-gt v1, v2, :cond_2b

    move v1, v3

    goto :goto_7

    :cond_2b
    move v1, v4

    goto :goto_7
.end method

.method private updateInputMethodExtractText()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 778
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 779
    .local v1, outText:Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 780
    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v3, :cond_11

    .line 793
    :cond_10
    :goto_10
    return-void

    .line 782
    :cond_11
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 783
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 785
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 786
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v2

    .line 787
    .local v2, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 788
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 789
    const-string v3, "HtmlComposerView"

    const-string v4, "getExtractedText "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 791
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_10

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 792
    invoke-virtual {v0, p0, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_10
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "content"

    .prologue
    .line 1022
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 1023
    return-void
.end method

.method public canCopy()Z
    .registers 2

    .prologue
    .line 201
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isBodyEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 202
    const/4 v0, 0x1

    .line 205
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public canCut()Z
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isBodyEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 193
    const/4 v0, 0x1

    .line 196
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public canPaste()Z
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v0

    if-ltz v0, :cond_12

    .line 210
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->hasData()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 211
    const/4 v0, 0x1

    .line 215
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public canSelectAll()Z
    .registers 2

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isBodyEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 176
    const/4 v0, 0x1

    .line 179
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public changeFontColorForSelection(Ljava/lang/String;)V
    .registers 3
    .parameter "fontColor"

    .prologue
    .line 766
    const-string v0, "ForeColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    return-void
.end method

.method public changeFontNameForSelection(Ljava/lang/String;)V
    .registers 3
    .parameter "fontName"

    .prologue
    .line 756
    const-string v0, "FontName"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method public changeFontSizeForSelection(Ljava/lang/String;)V
    .registers 3
    .parameter "fontSize"

    .prologue
    .line 761
    const-string v0, "FontSize"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method public cleanTempResources()V
    .registers 3

    .prologue
    .line 771
    const-string v0, "HtmlComposerView"

    const-string v1, "cleanTempResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->deleteTempDirectory()V

    .line 773
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 712
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAll()V

    .line 713
    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 714
    return-void
.end method

.method public copy()V
    .registers 3

    .prologue
    .line 699
    const-string v0, "Copy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public cut()V
    .registers 3

    .prologue
    .line 695
    const-string v0, "Cut"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method public destroy()V
    .registers 3

    .prologue
    const-string v1, "HtmlComposerView"

    .line 1040
    const-string v0, "HtmlComposerView"

    const-string v0, " htmlcomposer destroy() "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1043
    const-string v0, "HtmlComposerView"

    const-string v0, "htmlcomposer destroy() hide "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 1046
    :cond_19
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    if-eqz v0, :cond_25

    .line 1047
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->setTargetNull()V

    .line 1048
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 1050
    :cond_25
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 1051
    return-void
.end method

.method public disableEditing()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 688
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 689
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 690
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v0, :cond_12

    .line 691
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 692
    :cond_12
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 12
    .parameter "event"

    .prologue
    const/16 v9, 0x16

    const/16 v8, 0x13

    const/4 v7, 0x1

    .line 1247
    const/4 v2, 0x0

    .line 1248
    .local v2, retVal:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eq v4, v7, :cond_3a

    move v0, v7

    .line 1249
    .local v0, down:Z
    :goto_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1250
    .local v1, keyCode:I
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " dispatchKeyEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    if-lt v1, v8, :cond_5c

    if-gt v1, v9, :cond_5c

    .line 1252
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v3

    .line 1253
    .local v3, selctionAtBoundry:I
    if-nez v3, :cond_3d

    .line 1254
    if-eqz v0, :cond_38

    .line 1255
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_38
    move v4, v7

    .line 1270
    .end local v3           #selctionAtBoundry:I
    :goto_39
    return v4

    .line 1248
    .end local v0           #down:Z
    .end local v1           #keyCode:I
    :cond_3a
    const/4 v4, 0x0

    move v0, v4

    goto :goto_d

    .line 1258
    .restart local v0       #down:Z
    .restart local v1       #keyCode:I
    .restart local v3       #selctionAtBoundry:I
    :cond_3d
    if-ne v3, v7, :cond_4c

    if-eq v1, v9, :cond_45

    const/16 v4, 0x14

    if-ne v1, v4, :cond_4c

    .line 1259
    :cond_45
    if-eqz v0, :cond_4a

    .line 1260
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_4a
    move v4, v7

    .line 1261
    goto :goto_39

    .line 1263
    :cond_4c
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5c

    if-eq v1, v8, :cond_55

    const/16 v4, 0x15

    if-ne v1, v4, :cond_5c

    .line 1264
    :cond_55
    if-eqz v0, :cond_5a

    .line 1265
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_5a
    move v4, v7

    .line 1266
    goto :goto_39

    .line 1270
    .end local v3           #selctionAtBoundry:I
    :cond_5c
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_39
.end method

.method public enableEditing()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 683
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 684
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 685
    return-void
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "command"
    .parameter "value"

    .prologue
    .line 665
    const-string v1, "Insert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 667
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 668
    .local v0, length:I
    invoke-direct {p0, v0}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 675
    .end local v0           #length:I
    :goto_12
    return-void

    .line 673
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method declared-synchronized getComposingState()Z
    .registers 2

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConetextmenuVisibility()Z
    .registers 2

    .prologue
    .line 158
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    return v0
.end method

.method public getCursorPressed()Z
    .registers 2

    .prologue
    .line 154
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    return v0
.end method

.method public getHTML()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v3, ""

    .line 989
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 991
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    .line 992
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_11

    const-string v1, ""

    move-object v1, v3

    .line 995
    :goto_10
    return-object v1

    .line 993
    :cond_11
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 994
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 995
    goto :goto_10
.end method

.method public getImeOptions()I
    .registers 2

    .prologue
    .line 967
    iget v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    return v0
.end method

.method public getMailContent()Landroid/webkit/WebHTMLMarkupData;
    .registers 6

    .prologue
    const-string v4, ""

    .line 999
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 1001
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    .line 1002
    .local v0, data:Landroid/webkit/WebHTMLMarkupData;
    if-nez v0, :cond_e

    .line 1009
    :cond_d
    :goto_d
    return-object v0

    .line 1004
    :cond_e
    invoke-virtual {v0}, Landroid/webkit/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v1

    .line 1005
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 1006
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1007
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-virtual {v0, v1}, Landroid/webkit/WebHTMLMarkupData;->setHTMLFragment(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public getSelectionEnd()I
    .registers 2

    .prologue
    .line 1035
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    return v0
.end method

.method public getSelectionStart()I
    .registers 2

    .prologue
    .line 1032
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 6

    .prologue
    .line 975
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 976
    .local v1, text:Ljava/lang/String;
    if-nez v1, :cond_8

    const-string v1, ""

    .line 977
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    .line 978
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    aget-char v0, v2, v3

    .line 980
    .local v0, chrVal:I
    const-string v2, "HtmlComposerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getText() Not Null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    .end local v0           #chrVal:I
    :cond_2e
    return-object v1
.end method

.method public handleNavKeys(I)V
    .registers 4
    .parameter "keyCode"

    .prologue
    const/4 v1, 0x0

    .line 1211
    packed-switch p1, :pswitch_data_48

    .line 1242
    :goto_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1243
    return-void

    .line 1213
    :pswitch_8
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_12

    .line 1214
    const-string v0, "MoveLeftAndModifySelection"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1216
    :cond_12
    const-string v0, "MoveLeft"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1221
    :pswitch_18
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_22

    .line 1222
    const-string v0, "MoveRightAndModifySelection"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1224
    :cond_22
    const-string v0, "MoveRight"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1228
    :pswitch_28
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_32

    .line 1229
    const-string v0, "MoveUpAndModifySelection"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1231
    :cond_32
    const-string v0, "MoveUp"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1235
    :pswitch_38
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_42

    .line 1236
    const-string v0, "MoveDownAndModifySelection"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1238
    :cond_42
    const-string v0, "MoveDown"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1211
    :pswitch_data_48
    .packed-switch 0x13
        :pswitch_28
        :pswitch_38
        :pswitch_8
        :pswitch_18
    .end packed-switch
.end method

.method public htmlLength()I
    .registers 2

    .prologue
    .line 986
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V
    .registers 5
    .parameter "contentFragment"
    .parameter "pos"

    .prologue
    const/4 v1, 0x0

    .line 654
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v0, :cond_17

    .line 655
    const-string v0, "MoveToBeginningOfDocument"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_a
    :goto_a
    const-string v0, "InsertHTML"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 662
    return-void

    .line 657
    :cond_17
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v0, :cond_a

    .line 658
    const-string v0, "MoveToEndOfDocument"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public insertImage(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 725
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 726
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v1, "InsertHTML"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    return-void
.end method

.method public insertImage(Ljava/lang/String;II)V
    .registers 7
    .parameter "url"
    .parameter "widthInPixel"
    .parameter "heightInPixel"

    .prologue
    .line 717
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 718
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v1, "InsertHTML"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    return-void
.end method

.method public insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkit/WebView$SelectionOffset;
    .registers 6
    .parameter "content"
    .parameter "newCursorPosition"
    .parameter "composing"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/webkit/WebView$SelectionOffset;"
        }
    .end annotation

    .prologue
    .line 679
    .local p4, spanData:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    return-object v0
.end method

.method public isInputMethodTarget()Z
    .registers 3

    .prologue
    .line 170
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 171
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public length()I
    .registers 2

    .prologue
    .line 1018
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public loadHtmlFile(Ljava/lang/String;)V
    .registers 4
    .parameter "htmlFilePath"

    .prologue
    .line 591
    invoke-direct {p0, p1}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, data:Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method public moveCursorBegining()V
    .registers 3

    .prologue
    .line 742
    const-string v0, "MoveToBeginningOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method public moveCursorEnd()V
    .registers 3

    .prologue
    .line 738
    const-string v0, "MoveToEndOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method public onContextMenuItem(I)Z
    .registers 8
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 342
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 349
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 351
    iget-boolean v2, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v4, v2, :cond_19

    .line 352
    const-string v2, "HtmlComposerView"

    const-string/jumbo v3, "onContextMenuItem To hide Cursor handler"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iput v5, p0, Landroid/webkit/WebView;->iTimer:I

    .line 354
    iput-boolean v5, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 357
    :cond_19
    sparse-switch p1, :sswitch_data_c2

    move v2, v5

    .line 437
    :goto_1d
    return v2

    .line 360
    :sswitch_1e
    iput-boolean v4, p0, Landroid/webkit/WebView;->SimulateSelect:Z

    .line 363
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->AdvanceTextSelectionAll()Z

    move v2, v4

    .line 365
    goto :goto_1d

    .line 368
    :sswitch_25
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 369
    .local v0, cursurRect:Landroid/graphics/Rect;
    iput-boolean v4, p0, Landroid/webkit/WebView;->SimulateSelect:Z

    .line 370
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->setTextSelecitonManualAtContentPoint(II)Z

    .line 371
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    move v2, v4

    .line 374
    goto :goto_1d

    .line 377
    .end local v0           #cursurRect:Landroid/graphics/Rect;
    :sswitch_3b
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 378
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v2, v4

    .line 379
    goto :goto_1d

    .line 381
    :sswitch_43
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->AdvanceTextSelectionAll()Z

    .line 382
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 383
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v2, v4

    .line 384
    goto :goto_1d

    .line 386
    :sswitch_4e
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->saveSelection()V

    .line 387
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 388
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->restoreSelection()V

    .line 389
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    move v2, v4

    .line 390
    goto :goto_1d

    .line 395
    :sswitch_5c
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->saveSelection()V

    .line 396
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->AdvanceTextSelectionAll()Z

    .line 397
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 399
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->restoreSelection()V

    .line 400
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    move v2, v4

    .line 402
    goto :goto_1d

    .line 405
    :sswitch_6d
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->getHTMLForCheckingSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v2

    if-nez v2, :cond_81

    move v2, v4

    .line 407
    goto :goto_1d

    .line 409
    :cond_81
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->paste()V

    .line 410
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v2, v4

    .line 411
    goto :goto_1d

    .line 414
    :sswitch_89
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->getHTMLForCheckingSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v2

    if-nez v2, :cond_9d

    move v2, v4

    .line 416
    goto :goto_1d

    .line 418
    :cond_9d
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->launchClipboardUI()V

    .line 419
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v2, v4

    .line 420
    goto/16 :goto_1d

    .line 422
    :sswitch_aa
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->undo()V

    move v2, v4

    .line 423
    goto/16 :goto_1d

    .line 426
    :sswitch_b0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->redo()V

    move v2, v4

    .line 427
    goto/16 :goto_1d

    .line 430
    :sswitch_b6
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 431
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_bf

    .line 432
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_bf
    move v2, v4

    .line 434
    goto/16 :goto_1d

    .line 357
    :sswitch_data_c2
    .sparse-switch
        0x102001f -> :sswitch_1e
        0x1020020 -> :sswitch_3b
        0x1020021 -> :sswitch_4e
        0x1020022 -> :sswitch_6d
        0x1020024 -> :sswitch_b6
        0x1020028 -> :sswitch_25
        0x102002c -> :sswitch_aa
        0x102002d -> :sswitch_b0
        0x1020408 -> :sswitch_43
        0x1020409 -> :sswitch_5c
        0x102040a -> :sswitch_89
    .end sparse-switch
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .registers 11
    .parameter "menu"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 253
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, added:Z
    iget-boolean v5, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v8, v5, :cond_16

    .line 257
    const-string v5, "HtmlComposerView"

    const-string/jumbo v6, "onCreateContextMenu To hide Cursor handler"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iput v7, p0, Landroid/webkit/WebView;->iTimer:I

    .line 259
    iput-boolean v7, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 262
    :cond_16
    new-instance v1, Landroid/webkit/HtmlComposerView$MenuHandler;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Landroid/webkit/HtmlComposerView$MenuHandler;-><init>(Landroid/webkit/HtmlComposerView;Landroid/webkit/HtmlComposerView$1;)V

    .line 264
    .local v1, handler:Landroid/webkit/HtmlComposerView$MenuHandler;
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canSelectAll()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 265
    const v5, 0x102001f

    const v6, 0x104000d

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v6, 0x61

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 269
    const/4 v0, 0x1

    .line 272
    :cond_36
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v4

    .line 274
    .local v4, selectionVal:I
    if-ne v4, v8, :cond_d8

    move v3, v8

    .line 276
    .local v3, selection:Z
    :goto_3d
    if-nez v4, :cond_53

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isBodyEmpty()Z

    move-result v5

    if-nez v5, :cond_53

    .line 277
    const v5, 0x1020028

    const v6, 0x1040385

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 280
    const/4 v0, 0x1

    .line 283
    :cond_53
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canCut()Z

    move-result v5

    if-eqz v5, :cond_69

    .line 285
    if-eqz v3, :cond_db

    .line 286
    const v2, 0x1040003

    .line 287
    .local v2, name:I
    const v5, 0x1020020

    invoke-interface {p1, v7, v5, v7, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 295
    :goto_68
    const/4 v0, 0x1

    .line 298
    .end local v2           #name:I
    :cond_69
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canCopy()Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 300
    if-eqz v3, :cond_e9

    .line 301
    const v2, 0x1040001

    .line 302
    .restart local v2       #name:I
    const v5, 0x1020021

    invoke-interface {p1, v7, v5, v7, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 310
    :goto_7e
    const/4 v0, 0x1

    .line 313
    .end local v2           #name:I
    :cond_7f
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v5

    if-eqz v5, :cond_93

    .line 314
    const v5, 0x1020022

    const v6, 0x104000b

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 316
    const/4 v0, 0x1

    .line 319
    :cond_93
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canUndo()Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 320
    const v5, 0x102002c

    const v6, 0x1040388

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 324
    :cond_a6
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canRedo()Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 325
    const v5, 0x102002d

    const v6, 0x1040389

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 329
    :cond_b9
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isInputMethodTarget()Z

    move-result v5

    if-eqz v5, :cond_cd

    .line 330
    const v5, 0x1020024

    const v6, 0x104038a

    invoke-interface {p1, v8, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 332
    const/4 v0, 0x1

    .line 335
    :cond_cd
    if-eqz v0, :cond_d7

    .line 336
    iput-boolean v8, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 337
    const v5, 0x104038c

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 339
    :cond_d7
    return-void

    .end local v3           #selection:Z
    :cond_d8
    move v3, v7

    .line 274
    goto/16 :goto_3d

    .line 289
    .restart local v3       #selection:Z
    :cond_db
    const v2, 0x1040386

    .line 290
    .restart local v2       #name:I
    const v5, 0x1020408

    invoke-interface {p1, v7, v5, v7, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_68

    .line 304
    .end local v2           #name:I
    :cond_e9
    const v2, 0x1040387

    .line 305
    .restart local v2       #name:I
    const v5, 0x1020409

    invoke-interface {p1, v7, v5, v7, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7e
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 7
    .parameter "outAttrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "HtmlComposerView"

    .line 1276
    const-string v1, "HtmlComposerView"

    const-string/jumbo v1, "onCreateInputConnection"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    if-ne v3, v1, :cond_1c

    .line 1280
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1281
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "allowEmoji"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1282
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 1285
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1c
    iget-boolean v1, p0, Landroid/webkit/WebView;->isSelectionset:Z

    if-nez v1, :cond_2a

    .line 1287
    const-string v1, "HtmlComposerView"

    const-string v1, "calling set Caret 0 0 "

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    invoke-virtual {p0, v2, v2}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 1292
    :cond_2a
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x4000

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1296
    iget v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1297
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    return-object v1
.end method

.method public onEditorAction(I)V
    .registers 5
    .parameter "actionCode"

    .prologue
    const/16 v2, 0x82

    .line 1059
    const/4 v1, 0x5

    if-ne p1, v1, :cond_19

    .line 1060
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 1061
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_20

    .line 1062
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1063
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1070
    .end local v0           #v:Landroid/view/View;
    :cond_19
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    :cond_20
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 8
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x0

    const-string v3, "HtmlComposerView"

    .line 860
    const-string v0, "HtmlComposerView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFocusChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 862
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 863
    if-nez p1, :cond_3d

    .line 864
    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v0, v1, :cond_36

    .line 865
    const-string v0, "HtmlComposerView"

    const-string/jumbo v0, "onFocusChanged To hide Cursor handler"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iput v2, p0, Landroid/webkit/WebView;->iTimer:I

    .line 867
    iput-boolean v2, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 868
    iput-boolean v2, p0, Landroid/webkit/WebView;->bSCHvisibleonFocus:Z

    .line 870
    :cond_36
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->dismissClipboardUI()V

    .line 872
    :cond_3d
    if-eqz p1, :cond_52

    .line 873
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 874
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->updateClipboardUI()V

    .line 875
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 878
    :cond_52
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 879
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "InsertText"

    .line 1075
    const-string v4, "HtmlComposerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtmlComposerView onKeyDown "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v7, v4, :cond_28

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-ge v7, v4, :cond_28

    .line 1084
    iput-boolean v8, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1092
    :cond_28
    const/16 v4, 0x3f

    if-eq p1, v4, :cond_30

    const/16 v4, 0x76

    if-ne p1, v4, :cond_32

    .line 1094
    :cond_30
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 1100
    :cond_32
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1102
    const/16 v4, 0x3b

    if-eq p1, v4, :cond_3d

    const/16 v4, 0x3c

    if-ne p1, v4, :cond_ee

    .line 1104
    :cond_3d
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 1110
    :cond_3f
    iput v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1111
    iput v8, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1112
    const/4 v1, 0x0

    .line 1114
    .local v1, prevSpanTextBeforeStartOffset:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v5, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v4, v5, v8}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1116
    .local v3, spannableString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1118
    .local v2, spannableChar:[C
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1120
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v8, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1121
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 1122
    iget v4, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1123
    iget v4, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1125
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    if-ltz v4, :cond_81

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-ltz v4, :cond_81

    .line 1127
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1131
    :cond_81
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-lt v4, v7, :cond_94

    .line 1133
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    sub-int/2addr v5, v7

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v4, v5, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1136
    :cond_94
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    if-eqz v4, :cond_14e

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, p0, v5, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_14e

    .line 1138
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    sub-int v0, v4, v5

    .line 1139
    .local v0, diff:I
    if-lez v0, :cond_127

    .line 1141
    if-eqz v1, :cond_10f

    .line 1143
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    sub-int/2addr v5, v7

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v4, v5, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_f7

    .line 1145
    const-string v4, ""

    invoke-virtual {p0, v4, v7}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1146
    const-string v4, "InsertText"

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    sub-int/2addr v5, v7

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1161
    :goto_e2
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v4, v0

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1162
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v4, v0

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    :cond_ec
    :goto_ec
    move v4, v7

    .line 1173
    .end local v0           #diff:I
    .end local v1           #prevSpanTextBeforeStartOffset:Ljava/lang/String;
    .end local v2           #spannableChar:[C
    .end local v3           #spannableString:Ljava/lang/String;
    :goto_ed
    return v4

    .line 1105
    :cond_ee
    const/16 v4, 0x43

    if-ne p1, v4, :cond_3f

    .line 1107
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_ed

    .line 1151
    .restart local v0       #diff:I
    .restart local v1       #prevSpanTextBeforeStartOffset:Ljava/lang/String;
    .restart local v2       #spannableChar:[C
    .restart local v3       #spannableString:Ljava/lang/String;
    :cond_f7
    const-string v4, "InsertText"

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_e2

    .line 1157
    :cond_10f
    const-string v4, "InsertText"

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_e2

    .line 1163
    :cond_127
    if-gez v0, :cond_ec

    .line 1165
    const-string v4, "InsertText"

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1167
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1168
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    goto :goto_ec

    .line 1173
    .end local v0           #diff:I
    :cond_14e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_ed
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1203
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HtmlComposerView onKeyLongPress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1207
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1178
    const-string v0, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "htmlcompor onKeyUp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_20

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_44

    .line 1181
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 1187
    :cond_23
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    if-ltz v0, :cond_34

    iget v0, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-ltz v0, :cond_34

    .line 1189
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1192
    :cond_34
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    if-eqz v0, :cond_4d

    .line 1194
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1195
    const/4 v0, 0x1

    .line 1197
    :goto_43
    return v0

    .line 1182
    :cond_44
    const/16 v0, 0x43

    if-ne p1, v0, :cond_23

    .line 1184
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_43

    .line 1197
    :cond_4d
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_43
.end method

.method public onRecieveWebviewTouchUp()V
    .registers 5

    .prologue
    .line 798
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 801
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string v1, "HtmlComposerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imm active  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 805
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "HtmlComposerView"

    .line 811
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 812
    .local v0, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_42

    .line 841
    :cond_f
    :goto_f
    return v0

    .line 814
    :pswitch_10
    const-string v1, "HtmlComposerView"

    const-string v1, "MotionEvent.ACTION_DOWN  html compopser"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iput-boolean v2, p0, Landroid/webkit/WebView;->mInActionMove:Z

    goto :goto_f

    .line 818
    :pswitch_1a
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 819
    const-string v1, "HtmlComposerView"

    const-string/jumbo v1, "making selection set to true"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iput-boolean v3, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 821
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    if-nez v1, :cond_3b

    .line 822
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 823
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 833
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 835
    :cond_3b
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 837
    iput-boolean v2, p0, Landroid/webkit/WebView;->mInActionMove:Z

    goto :goto_f

    .line 812
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_10
        :pswitch_1a
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 10
    .parameter "hasWindowFocus"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "InsertText"

    const-string v3, "HtmlComposerView"

    .line 884
    const-string v1, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 886
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v1, :cond_2e

    if-eqz p1, :cond_2e

    .line 887
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 888
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 890
    :cond_2e
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-nez v1, :cond_35

    .line 892
    invoke-virtual {p0, v6}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 894
    :cond_35
    if-nez p1, :cond_7d

    .line 896
    iget-boolean v1, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v5, v1, :cond_49

    .line 897
    const-string v1, "HtmlComposerView"

    const-string/jumbo v1, "onWindowFocusChanged To hide Cursor handler"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iput v6, p0, Landroid/webkit/WebView;->iTimer:I

    .line 899
    iput-boolean v6, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 900
    iput-boolean v6, p0, Landroid/webkit/WebView;->bSCHvisibleonFocus:Z

    .line 902
    :cond_49
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v5, v1, :cond_51

    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v5, v1, :cond_7c

    .line 904
    :cond_51
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 905
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 907
    const-string v1, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged WindowFocus = false, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_7c
    :goto_7c
    return-void

    .line 911
    :cond_7d
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v5, v1, :cond_85

    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v5, v1, :cond_ed

    .line 913
    :cond_85
    const-string v1, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged WindowFocus = true, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    if-ltz v1, :cond_f4

    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-ltz v1, :cond_f4

    .line 917
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 926
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    sub-int v0, v1, v2

    .line 933
    .local v0, diff:I
    if-lez v0, :cond_11d

    .line 935
    const-string v1, "InsertText"

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 949
    :cond_d4
    :goto_d4
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 950
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 952
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-ne v5, v1, :cond_e4

    .line 953
    iput-boolean v6, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 954
    :cond_e4
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v5, v1, :cond_ea

    .line 955
    iput-boolean v6, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 957
    :cond_ea
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 960
    .end local v0           #diff:I
    :cond_ed
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v5, v1, :cond_7c

    .line 961
    iput-boolean v6, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    goto :goto_7c

    .line 922
    :cond_f4
    const-string v1, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged mCurSelStart= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurSelEnd= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7c

    .line 938
    .restart local v0       #diff:I
    :cond_11d
    if-nez v0, :cond_d4

    .line 940
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-lez v1, :cond_d4

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    sub-int/2addr v2, v5

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    sub-int/2addr v3, v5

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v2, v3, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_d4

    .line 943
    const-string v1, ""

    invoke-virtual {p0, v1, v5}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 944
    const-string v1, "InsertText"

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    sub-int/2addr v2, v5

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_d4
.end method

.method public paste()V
    .registers 3

    .prologue
    .line 704
    const-string v0, "Paste"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public redo()V
    .registers 3

    .prologue
    .line 751
    const-string v0, "Redo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 753
    return-void
.end method

.method public selectAll()V
    .registers 3

    .prologue
    .line 708
    const-string v0, "SelectAll"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method declared-synchronized setComposingState(Z)V
    .registers 3
    .parameter "isInComposingState"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCursorPressed(Z)V
    .registers 2
    .parameter "IsPressed"

    .prologue
    .line 149
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 150
    return-void
.end method

.method public setEditableSelection(II)V
    .registers 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 731
    if-ltz p1, :cond_7

    if-ltz p2, :cond_7

    .line 732
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->setEditableSelection(II)V

    .line 735
    :cond_7
    return-void
.end method

.method public setEmoji(Z)V
    .registers 5
    .parameter "bIsActive"

    .prologue
    .line 1027
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " htmlcomposer setEmoji() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1028
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 1029
    return-void
.end method

.method public setImeOptions(I)V
    .registers 2
    .parameter "imeOption"

    .prologue
    .line 971
    iput p1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 972
    return-void
.end method

.method public setMaxHtmlLength(I)V
    .registers 3
    .parameter "maxHtmlLength"

    .prologue
    .line 162
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 164
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .parameter "content"

    .prologue
    .line 1014
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clear()V

    .line 1015
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 1016
    return-void
.end method

.method public setWidthForCopiedImage(I)V
    .registers 3
    .parameter "viewWidth"

    .prologue
    .line 142
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 143
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebClipboard;->setWidthForCopiedImage(I)V

    .line 144
    return-void
.end method

.method public undo()V
    .registers 3

    .prologue
    .line 746
    const-string v0, "Undo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 748
    return-void
.end method
