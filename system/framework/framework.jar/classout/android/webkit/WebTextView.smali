.class Landroid/webkit/WebTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "WebTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebTextView$1;,
        Landroid/webkit/WebTextView$OutlineDrawable;,
        Landroid/webkit/WebTextView$AutoCompleteAdapter;
    }
.end annotation


# static fields
.field private static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_NEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusNext"

.field private static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_PREV:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.MoveFocusPrev"

.field private static final AXT9IME_PRIVATE_CMD_MOVE_FOCUS_PREVNEXT:Ljava/lang/String; = "com.sec.android.inputmethod.axt9.BrowserPrevNext"

.field static final LOGTAG:Ljava/lang/String; = "webtextview"

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field static final mPasswordAdjustXPadding:I = 0x5


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCharacter:[C

.field private mDragSent:Z

.field private mDragStartTime:J

.field private mDragStartX:F

.field private mDragStartY:F

.field private mFromFocusChange:Z

.field private mFromSetInputType:Z

.field private mFromWebKit:Z

.field private mGotEnterDown:Z

.field private mGotTouchDown:Z

.field private mHasPerformedLongClick:Z

.field private mHeightSpec:I

.field private mInSetTextAndKeepSelection:Z

.field private mMaxLength:I

.field private mNodeName:Ljava/lang/String;

.field private mNodePointer:I

.field private mPreChange:Ljava/lang/String;

.field private mScrolled:Z

.field private mSingle:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWidthSpec:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 126
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/webkit/WebTextView;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 5
    .parameter "context"
    .parameter "webView"

    .prologue
    .line 134
    const/4 v0, 0x0

    const v1, 0x10102b9

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/webkit/WebTextView;->mCharacter:[C

    .line 135
    iput-object p2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 137
    return-void
.end method

.method private createBackground()V
    .registers 5

    .prologue
    .line 813
    iget-object v2, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 829
    :goto_4
    return-void

    .line 816
    :cond_5
    new-instance v2, Landroid/webkit/WebTextView$OutlineDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/webkit/WebTextView$OutlineDrawable;-><init>(Landroid/webkit/WebTextView$1;)V

    iput-object v2, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 818
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 821
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 822
    .local v1, paint:Landroid/text/TextPaint;
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    or-int/lit8 v0, v2, 0x1

    .line 824
    .local v0, flags:I
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 828
    const/high16 v2, -0x100

    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setTextColor(I)V

    goto :goto_4
.end method

.method private lineUpScroll()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 316
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 317
    .local v0, layout:Landroid/text/Layout;
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_57

    if-eqz v0, :cond_57

    .line 318
    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-static {p0, v0, v2}, Landroid/text/method/Touch;->getMaxScrollX(Landroid/widget/TextView;Landroid/text/Layout;I)I

    move-result v2

    int-to-float v1, v2

    .line 319
    .local v1, maxScrollX:F
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_TEXT_VIEW:Z

    if-eqz v2, :cond_48

    .line 320
    const-string/jumbo v2, "webtextview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTouchEvent x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " maxX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_48
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    cmpl-float v3, v1, v5

    if-lez v3, :cond_58

    iget v3, p0, Landroid/view/View;->mScrollX:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    :goto_52
    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->scrollFocusedTextInput(FI)V

    .line 326
    .end local v1           #maxScrollX:F
    :cond_57
    return-void

    .restart local v1       #maxScrollX:F
    :cond_58
    move v3, v5

    .line 323
    goto :goto_52
.end method

.method private sendDomEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 690
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 691
    return-void
.end method

.method private setMaxLength(I)V
    .registers 5
    .parameter "maxLength"

    .prologue
    .line 840
    const/4 v0, -0x1

    if-ne v0, p1, :cond_5

    .line 841
    const/16 p1, 0x1f40

    .line 842
    :cond_5
    iput p1, p0, Landroid/webkit/WebTextView;->mMaxLength:I

    .line 846
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 850
    return-void
.end method


# virtual methods
.method bringIntoView()V
    .registers 2

    .prologue
    .line 680
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 681
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->bringPointIntoView(I)Z

    .line 683
    :cond_11
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 20
    .parameter "event"

    .prologue
    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 142
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 298
    :goto_a
    return v3

    .line 145
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2b

    const/4 v3, 0x1

    move v9, v3

    .line 146
    .local v9, down:Z
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    .line 148
    .local v11, keyCode:I
    const/4 v10, 0x0

    .line 149
    .local v10, isArrowKey:Z
    packed-switch v11, :pswitch_data_1e2

    .line 163
    :goto_1c
    const/16 v3, 0x3d

    if-ne v3, v11, :cond_59

    .line 164
    if-eqz v9, :cond_29

    .line 165
    const/4 v3, 0x5

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->onEditorAction(I)V

    .line 167
    :cond_29
    const/4 v3, 0x1

    goto :goto_a

    .line 145
    .end local v9           #down:Z
    .end local v10           #isArrowKey:Z
    .end local v11           #keyCode:I
    :cond_2b
    const/4 v3, 0x0

    move v9, v3

    goto :goto_14

    .line 154
    .restart local v9       #down:Z
    .restart local v10       #isArrowKey:Z
    .restart local v11       #keyCode:I
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v3

    if-nez v3, :cond_57

    .line 155
    if-eqz v9, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_a

    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_a

    .line 159
    :cond_57
    const/4 v10, 0x1

    goto :goto_1c

    .line 169
    :cond_59
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v17

    .line 170
    .local v17, text:Landroid/text/Spannable;
    invoke-interface/range {v17 .. v17}, Landroid/text/Spannable;->length()I

    move-result v5

    .line 174
    .local v5, oldLength:I
    const/16 v3, 0x43

    if-ne v3, v11, :cond_6c

    if-nez v5, :cond_6c

    .line 175
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 176
    const/4 v3, 0x1

    goto :goto_a

    .line 179
    :cond_6c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mSingle:Z

    move v3, v0

    if-eqz v3, :cond_d5

    const/16 v3, 0x42

    if-ne v3, v11, :cond_d5

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 181
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_a

    .line 184
    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v3

    if-nez v3, :cond_ad

    .line 185
    if-eqz v9, :cond_9e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_a

    :cond_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_a

    .line 189
    :cond_ad
    if-nez v9, :cond_cf

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 195
    .end local v5           #oldLength:I
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v11}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 196
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 198
    :cond_cf
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_a

    .line 199
    .restart local v5       #oldLength:I
    :cond_d5
    const/16 v3, 0x17

    if-ne v3, v11, :cond_120

    .line 201
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 202
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_a

    .line 204
    :cond_e5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v3

    if-nez v3, :cond_110

    .line 205
    if-eqz v9, :cond_101

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_a

    :cond_101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_a

    .line 209
    :cond_110
    if-nez v9, :cond_11a

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 213
    :cond_11a
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_a

    .line 217
    :cond_120
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_137

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mWidthSpec:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mHeightSpec:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->measure(II)V

    .line 220
    :cond_137
    invoke-static/range {v17 .. v17}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v14

    .line 221
    .local v14, oldStart:I
    invoke-static/range {v17 .. v17}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 223
    .local v13, oldEnd:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_175

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v3, v0

    if-ne v5, v3, :cond_175

    const/4 v3, 0x1

    move v12, v3

    .line 228
    .local v12, maxedOut:Z
    :goto_150
    if-eqz v12, :cond_178

    if-eq v13, v14, :cond_178

    .line 229
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 233
    .local v15, oldText:Ljava/lang/String;
    :goto_158
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1a8

    .line 244
    const/16 v3, 0x42

    if-ne v3, v11, :cond_168

    .line 248
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    .line 250
    :cond_168
    if-eqz v12, :cond_1a5

    if-nez v10, :cond_1a5

    const/16 v3, 0x43

    if-eq v11, v3, :cond_1a5

    .line 251
    if-ne v13, v14, :cond_17b

    .line 253
    const/4 v3, 0x1

    goto/16 :goto_a

    .line 223
    .end local v12           #maxedOut:Z
    .end local v15           #oldText:Ljava/lang/String;
    :cond_175
    const/4 v3, 0x0

    move v12, v3

    goto :goto_150

    .line 231
    .restart local v12       #maxedOut:Z
    :cond_178
    const-string v15, ""

    .restart local v15       #oldText:Ljava/lang/String;
    goto :goto_158

    .line 254
    :cond_17b
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a5

    .line 261
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v16

    .line 262
    .local v16, span:Landroid/text/Spannable;
    invoke-static/range {v16 .. v16}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v7

    .line 263
    .local v7, newStart:I
    invoke-static/range {v16 .. v16}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    .line 264
    .local v8, newEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 266
    const/4 v3, 0x1

    goto/16 :goto_a

    .line 281
    .end local v7           #newStart:I
    .end local v8           #newEnd:I
    .end local v16           #span:Landroid/text/Spannable;
    :cond_1a5
    const/4 v3, 0x1

    goto/16 :goto_a

    .line 285
    :cond_1a8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mGotEnterDown:Z

    move v3, v0

    if-eqz v3, :cond_1b4

    if-nez v9, :cond_1b4

    .line 286
    const/4 v3, 0x1

    goto/16 :goto_a

    .line 289
    :cond_1b4
    if-eqz v10, :cond_1de

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->resetTrackballTime()V

    .line 295
    if-eqz v9, :cond_1cf

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_a

    :cond_1cf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_a

    .line 298
    :cond_1de
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 149
    nop

    :pswitch_data_1e2
    .packed-switch 0x13
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method isSameTextField(I)Z
    .registers 3
    .parameter "ptr"

    .prologue
    .line 309
    iget v0, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .parameter "outAttrs"

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 331
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget-object v1, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_2d

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    .line 337
    :cond_2d
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 345
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeFocusCandidatePointer()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 351
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 355
    :goto_1c
    return-void

    .line 353
    :cond_1d
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1c
.end method

.method public onDrawSubstitute()V
    .registers 8

    .prologue
    .line 359
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_7

    .line 379
    :goto_6
    return-void

    .line 368
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 369
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2b

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 370
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 371
    .local v6, sp:Landroid/text/Spannable;
    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 372
    .local v2, selStart:I
    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 373
    .local v3, selEnd:I
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 374
    .local v4, candStart:I
    invoke-static {v6}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .local v5, candEnd:I
    move-object v1, p0

    .line 375
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 378
    .end local v2           #selStart:I
    .end local v3           #selEnd:I
    .end local v4           #candStart:I
    .end local v5           #candEnd:I
    .end local v6           #sp:Landroid/text/Spannable;
    :cond_2b
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->updateCursorControllerPositions()V

    goto :goto_6
.end method

.method public onEditorAction(I)V
    .registers 6
    .parameter "actionCode"

    .prologue
    const/16 v3, 0x42

    const/4 v2, 0x0

    .line 383
    packed-switch p1, :pswitch_data_46

    .line 412
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 385
    :pswitch_7
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeMoveCursorToNextTextInput()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 388
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 391
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 392
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 393
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_6

    .line 397
    :pswitch_22
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onEditorAction(I)V

    goto :goto_6

    .line 402
    :pswitch_26
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 404
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 406
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    goto :goto_6

    .line 383
    nop

    :pswitch_data_46
    .packed-switch 0x2
        :pswitch_26
        :pswitch_26
        :pswitch_6
        :pswitch_7
        :pswitch_22
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 459
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    .line 461
    return-void
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 10
    .parameter "action"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 418
    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 419
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    iget v4, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView;->nativeMoveCursorToInput(Ljava/lang/String;II)I

    move-result v1

    .line 423
    .local v1, prevInputType:I
    if-ne v1, v5, :cond_24

    .line 424
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 431
    :goto_1b
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 432
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    .line 451
    .end local v1           #prevInputType:I
    :cond_23
    :goto_23
    return v6

    .line 426
    .restart local v1       #prevInputType:I
    :cond_24
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 429
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto :goto_1b

    .line 434
    .end local v1           #prevInputType:I
    :cond_2f
    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 435
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    iget v4, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v2, v3, v4, v6}, Landroid/webkit/WebView;->nativeMoveCursorToInput(Ljava/lang/String;II)I

    move-result v0

    .line 439
    .local v0, nextInputType:I
    if-ne v0, v5, :cond_51

    .line 440
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 447
    :goto_48
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 448
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_23

    .line 442
    :cond_51
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 445
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto :goto_48
.end method

.method protected onScrollChanged(IIII)V
    .registers 5
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 465
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onScrollChanged(IIII)V

    .line 466
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 467
    return-void
.end method

.method protected onSelectionChanged(II)V
    .registers 6
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 471
    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    if-nez v0, :cond_44

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromFocusChange:Z

    if-nez v0, :cond_44

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    if-nez v0, :cond_44

    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    if-nez v0, :cond_44

    .line 475
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TEXT_VIEW:Z

    if-eqz v0, :cond_3c

    .line 476
    const-string/jumbo v0, "webtextview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSelectionChanged selStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " selEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_3c
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setSelection(II)V

    .line 480
    invoke-direct {p0}, Landroid/webkit/WebTextView;->lineUpScroll()V

    .line 482
    :cond_44
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 23
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 486
    invoke-super/range {p0 .. p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 487
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 492
    .local v17, postChange:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v5, v0

    const/4 v6, -0x1

    if-le v5, v6, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v6, v0

    if-le v5, v6, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebTextView;->mMaxLength:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 550
    :cond_4c
    :goto_4c
    return-void

    .line 497
    :cond_4d
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 498
    if-nez p4, :cond_69

    .line 499
    if-lez p3, :cond_4c

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v6, p2, p3

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->deleteSelection(II)V

    .line 504
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto :goto_4c

    .line 516
    :cond_69
    add-int v5, p2, p4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    add-int v6, p2, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 517
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v15

    .line 519
    .local v15, kmap:Landroid/view/KeyCharacterMap;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mCharacter:[C

    move-object v5, v0

    invoke-virtual {v15, v5}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v13

    .line 520
    .local v13, events:[Landroid/view/KeyEvent;
    if-nez v13, :cond_e3

    const/4 v5, 0x1

    move v11, v5

    .line 521
    .local v11, cannotUseKeyEvents:Z
    :goto_90
    if-eqz v11, :cond_e6

    const/4 v5, 0x0

    move v12, v5

    .line 522
    .local v12, charactersFromKeyEvents:I
    :goto_94
    const/4 v5, 0x1

    move/from16 v0, p4

    move v1, v5

    if-gt v0, v1, :cond_9c

    if-eqz v11, :cond_e9

    .line 523
    :cond_9c
    add-int v5, p2, p4

    sub-int/2addr v5, v12

    move-object/from16 v0, p1

    move/from16 v1, p2

    move v2, v5

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 525
    .local v8, replace:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v7, p2, p3

    add-int v6, p2, p4

    sub-int v9, v6, v12

    add-int v6, p2, p4

    sub-int v10, v6, v12

    move/from16 v6, p2

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 539
    .end local v8           #replace:Ljava/lang/String;
    :cond_c0
    :goto_c0
    if-nez v11, :cond_12c

    .line 540
    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    .line 541
    .local v16, length:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_c7
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_12c

    .line 544
    aget-object v5, v13, v14

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v5

    if-nez v5, :cond_e0

    .line 545
    aget-object v5, v13, v14

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebTextView;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 541
    :cond_e0
    add-int/lit8 v14, v14, 0x1

    goto :goto_c7

    .line 520
    .end local v11           #cannotUseKeyEvents:Z
    .end local v12           #charactersFromKeyEvents:I
    .end local v14           #i:I
    .end local v16           #length:I
    :cond_e3
    const/4 v5, 0x0

    move v11, v5

    goto :goto_90

    .line 521
    .restart local v11       #cannotUseKeyEvents:Z
    :cond_e6
    const/4 v5, 0x1

    move v12, v5

    goto :goto_94

    .line 531
    .restart local v12       #charactersFromKeyEvents:I
    :cond_e9
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_TEXT_VIEW:Z

    if-eqz v5, :cond_116

    .line 532
    const-string/jumbo v5, "webtextview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTextChanged start="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " start + before="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int v7, p2, p3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_116
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    move v5, v0

    if-nez v5, :cond_c0

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v6, p2, p3

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setSelection(II)V

    goto :goto_c0

    .line 549
    :cond_12c
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    goto/16 :goto_4c
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "event"

    .prologue
    .line 554
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_ee

    .line 635
    :goto_7
    const/4 v8, 0x1

    :goto_8
    return v8

    .line 556
    :pswitch_9
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    .line 560
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    .line 561
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    .line 562
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 563
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 564
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 565
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    goto :goto_7

    .line 568
    :pswitch_2b
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_34

    .line 569
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 570
    const/4 v8, 0x0

    goto :goto_8

    .line 572
    :cond_34
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 573
    .local v6, slop:I
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 574
    .local v0, buffer:Landroid/text/Spannable;
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v3

    .line 575
    .local v3, initialScrollX:I
    invoke-static {p0, v0}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v4

    .line 576
    .local v4, initialScrollY:I
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 577
    iget v8, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 578
    .local v1, dx:I
    iget v8, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 582
    .local v2, dy:I
    div-int/lit8 v7, v6, 0x2

    .line 583
    .local v7, smallerSlop:I
    if-gt v1, v7, :cond_61

    if-le v2, v7, :cond_69

    .line 585
    :cond_61
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 586
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 587
    const/4 v8, 0x1

    goto :goto_8

    .line 589
    :cond_69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_90

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_90

    .line 594
    const/4 v8, 0x1

    goto/16 :goto_8

    .line 596
    :cond_90
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_b7

    .line 598
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-nez v8, :cond_a6

    .line 599
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v9, p0, Landroid/webkit/WebTextView;->mDragStartX:F

    iget v10, p0, Landroid/webkit/WebTextView;->mDragStartY:F

    iget-wide v11, p0, Landroid/webkit/WebTextView;->mDragStartTime:J

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/webkit/WebView;->initiateTextFieldDrag(FFJ)V

    .line 601
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    .line 603
    :cond_a6
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->textFieldDrag(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 604
    .local v5, scrolled:Z
    if-eqz v5, :cond_b7

    .line 605
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    .line 606
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 607
    const/4 v8, 0x1

    goto/16 :goto_8

    .line 610
    .end local v5           #scrolled:Z
    :cond_b7
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 613
    .end local v0           #buffer:Landroid/text/Spannable;
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #initialScrollX:I
    .end local v4           #initialScrollY:I
    .end local v6           #slop:I
    .end local v7           #smallerSlop:I
    :pswitch_ba
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 614
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    if-eqz v8, :cond_c7

    .line 615
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    .line 616
    const/4 v8, 0x0

    goto/16 :goto_8

    .line 618
    :cond_c7
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mScrolled:Z

    if-nez v8, :cond_db

    .line 621
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->cancelLongPress()V

    .line 622
    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    if-eqz v8, :cond_db

    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_db

    .line 623
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->touchUpOnTextField(Landroid/view/MotionEvent;)V

    .line 627
    :cond_db
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v8, :cond_e8

    iget-boolean v8, p0, Landroid/webkit/WebTextView;->mDragSent:Z

    if-eqz v8, :cond_e8

    .line 628
    iget-object v8, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 630
    :cond_e8
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/webkit/WebTextView;->mGotTouchDown:Z

    goto/16 :goto_7

    .line 554
    nop

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_9
        :pswitch_ba
        :pswitch_2b
        :pswitch_ba
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 640
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 641
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 658
    :goto_b
    return v2

    .line 643
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_15

    move v2, v4

    .line 644
    goto :goto_b

    .line 648
    :cond_15
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeCursorMatchesFocus()Z

    move-result v2

    if-nez v2, :cond_24

    .line 649
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_b

    .line 651
    :cond_24
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 652
    .local v1, text:Landroid/text/Spannable;
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 653
    .local v0, move:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 656
    const/4 v2, 0x1

    goto :goto_b

    :cond_3c
    move v2, v4

    .line 658
    goto :goto_b
.end method

.method public performLongClick()Z
    .registers 2

    .prologue
    .line 663
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mHasPerformedLongClick:Z

    .line 664
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method remove()V
    .registers 4

    .prologue
    .line 673
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 675
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 676
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 677
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .registers 4
    .parameter "rectangle"

    .prologue
    .line 1068
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->inAnimateZoom()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1070
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_TEXT_VIEW:Z

    if-eqz v0, :cond_14

    .line 1071
    const-string/jumbo v0, "webtextview"

    const-string v1, "....Doing a super.requestRectangleOnScreen...."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_14
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v0

    .line 1075
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 698
    if-eqz p1, :cond_f

    .line 699
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 701
    #calls: Landroid/webkit/WebTextView$AutoCompleteAdapter;->setTextView(Landroid/widget/TextView;)V
    invoke-static {p1, p0}, Landroid/webkit/WebTextView$AutoCompleteAdapter;->access$000(Landroid/webkit/WebTextView$AutoCompleteAdapter;Landroid/widget/TextView;)V

    .line 703
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 704
    return-void
.end method

.method setDefaultSelection()V
    .registers 4

    .prologue
    .line 744
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 745
    .local v1, text:Landroid/text/Spannable;
    iget-boolean v2, p0, Landroid/webkit/WebTextView;->mSingle:Z

    if-eqz v2, :cond_23

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v2

    move v0, v2

    .line 746
    .local v0, selection:I
    :goto_d
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_26

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-ne v2, v0, :cond_26

    .line 756
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_22

    .line 757
    iget-object v2, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v0, v0}, Landroid/webkit/WebView;->setSelection(II)V

    .line 762
    :cond_22
    :goto_22
    return-void

    .line 745
    .end local v0           #selection:I
    :cond_23
    const/4 v2, 0x0

    move v0, v2

    goto :goto_d

    .line 760
    .restart local v0       #selection:I
    :cond_26
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_22
.end method

.method setInPassword(Z)V
    .registers 3
    .parameter "inPassword"

    .prologue
    .line 770
    if-eqz p1, :cond_a

    .line 771
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 773
    invoke-direct {p0}, Landroid/webkit/WebTextView;->createBackground()V

    .line 777
    :cond_a
    if-nez p1, :cond_18

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setWillNotDraw(Z)V

    .line 778
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/webkit/WebTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    :goto_14
    invoke-virtual {p0, v0}, Landroid/webkit/WebTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 779
    return-void

    .line 777
    :cond_18
    const/4 v0, 0x0

    goto :goto_d

    .line 778
    :cond_1a
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public setInputType(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 834
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 835
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebTextView;->mFromSetInputType:Z

    .line 836
    return-void
.end method

.method setNodeName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 864
    iput-object p1, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    .line 865
    return-void
.end method

.method setNodePointer(I)V
    .registers 2
    .parameter "ptr"

    .prologue
    .line 859
    iput p1, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    .line 860
    return-void
.end method

.method setRect(IIII)V
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 879
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 880
    .local v1, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    if-nez v1, :cond_3b

    .line 881
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v1           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v1, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 890
    .restart local v1       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :goto_10
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getInputType()I

    move-result v0

    .line 891
    .local v0, inputType:I
    and-int/lit16 v2, v0, 0xfff

    .line 893
    .local v2, variation:I
    const/16 v3, 0x81

    if-ne v2, v3, :cond_23

    .line 895
    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 898
    const/4 v3, 0x5

    invoke-virtual {p0, v3, v4, v4, v4}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 903
    :cond_23
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_44

    .line 904
    iget-object v3, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, p0, v1}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 909
    :goto_2e
    invoke-static {p3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebTextView;->mWidthSpec:I

    .line 910
    invoke-static {p4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebTextView;->mHeightSpec:I

    .line 911
    return-void

    .line 883
    .end local v0           #inputType:I
    .end local v2           #variation:I
    :cond_3b
    iput p1, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 884
    iput p2, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 885
    iput p3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 886
    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_10

    .line 906
    .restart local v0       #inputType:I
    .restart local v2       #variation:I
    :cond_44
    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2e
.end method

.method setSelectionFromWebKit(II)V
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 917
    if-ltz p1, :cond_4

    if-gez p2, :cond_5

    .line 924
    :cond_4
    :goto_4
    return-void

    .line 918
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 919
    .local v1, text:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 920
    .local v0, length:I
    if-gt p1, v0, :cond_4

    if-gt p2, v0, :cond_4

    .line 921
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    .line 922
    invoke-static {v1, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 923
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebTextView;->mFromWebKit:Z

    goto :goto_4
.end method

.method setTextAndKeepSelection(Ljava/lang/String;)V
    .registers 8
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 932
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/WebTextView;->mPreChange:Ljava/lang/String;

    .line 933
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 934
    .local v0, edit:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 935
    .local v3, selStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 936
    .local v2, selEnd:I
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 937
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v0, v5, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 938
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 939
    .local v1, newLength:I
    if-le v3, v1, :cond_24

    move v3, v1

    .line 940
    :cond_24
    if-le v2, v1, :cond_27

    move v2, v1

    .line 941
    :cond_27
    invoke-static {v0, v3, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 942
    iput-boolean v5, p0, Landroid/webkit/WebTextView;->mInSetTextAndKeepSelection:Z

    .line 943
    invoke-virtual {p0}, Landroid/webkit/WebTextView;->updateCachedTextfield()V

    .line 944
    return-void
.end method

.method setType(I)V
    .registers 16
    .parameter "type"

    .prologue
    const/4 v13, 0x0

    .line 955
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    if-nez v10, :cond_6

    .line 1057
    :goto_5
    return-void

    .line 956
    :cond_6
    const/4 v9, 0x1

    .line 957
    .local v9, single:Z
    const/4 v3, 0x0

    .line 958
    .local v3, inPassword:Z
    const/4 v5, -0x1

    .line 959
    .local v5, maxLength:I
    const/4 v4, 0x1

    .line 960
    .local v4, inputType:I
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->nativeFocusCandidateHasNextTextfield()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 961
    const/4 v10, 0x4

    if-ne p1, v10, :cond_7e

    .line 962
    or-int/lit8 v4, v4, 0x20

    .line 966
    :cond_17
    :goto_17
    const/high16 v2, -0x7000

    .line 968
    .local v2, imeOptions:I
    packed-switch p1, :pswitch_data_b6

    .line 1008
    or-int/lit8 v2, v2, 0x2

    .line 1011
    :goto_1e
    invoke-virtual {p0, v13}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1012
    if-eqz v9, :cond_4e

    .line 1016
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->nativeFocusCandidateMaxLength()I

    move-result v5

    .line 1017
    const/4 v10, 0x2

    if-eq p1, v10, :cond_4e

    .line 1019
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->nativeFocusCandidateFramePointer()I

    move-result v11

    iget v12, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->requestLabel(II)V

    .line 1022
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v6

    .line 1023
    .local v6, name:Ljava/lang/String;
    if-eqz v6, :cond_4e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4e

    .line 1024
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget v11, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v10, v6, v11}, Landroid/webkit/WebView;->requestFormData(Ljava/lang/String;I)V

    .line 1030
    .end local v6           #name:Ljava/lang/String;
    :cond_4e
    iget-object v10, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    iget-object v11, p0, Landroid/webkit/WebTextView;->mNodeName:Ljava/lang/String;

    iget v12, p0, Landroid/webkit/WebTextView;->mNodePointer:I

    invoke-virtual {v10, v11, v12}, Landroid/webkit/WebView;->nativeInputFieldAction(Ljava/lang/String;I)I

    move-result v0

    .line 1031
    .local v0, action:I
    const/16 v7, 0xc

    .line 1032
    .local v7, next_mask:I
    const/4 v8, 0x3

    .line 1033
    .local v8, prev_mask:I
    and-int v10, v0, v7

    if-eqz v10, :cond_9e

    and-int v10, v0, v8

    if-eqz v10, :cond_9e

    .line 1034
    const-string v10, "com.sec.android.inputmethod.axt9.BrowserPrevNext"

    invoke-virtual {p0, v10}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 1049
    :goto_68
    iput-boolean v9, p0, Landroid/webkit/WebTextView;->mSingle:Z

    .line 1050
    invoke-direct {p0, v5}, Landroid/webkit/WebTextView;->setMaxLength(I)V

    .line 1051
    invoke-virtual {p0, v9}, Landroid/webkit/WebTextView;->setHorizontallyScrolling(Z)V

    .line 1052
    invoke-virtual {p0, v4}, Landroid/webkit/WebTextView;->setInputType(I)V

    .line 1053
    invoke-virtual {p0, v2}, Landroid/webkit/WebTextView;->setImeOptions(I)V

    .line 1054
    invoke-virtual {p0, v3}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 1055
    const/4 v1, 0x0

    .line 1056
    .local v1, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    invoke-virtual {p0, v1}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto :goto_5

    .line 964
    .end local v0           #action:I
    .end local v1           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    .end local v2           #imeOptions:I
    .end local v7           #next_mask:I
    .end local v8           #prev_mask:I
    :cond_7e
    or-int/lit16 v4, v4, 0xa0

    goto :goto_17

    .line 970
    .restart local v2       #imeOptions:I
    :pswitch_81
    or-int/lit8 v2, v2, 0x2

    .line 971
    goto :goto_1e

    .line 973
    :pswitch_84
    const/4 v9, 0x0

    .line 974
    const v4, 0x2c001

    .line 978
    or-int/lit8 v2, v2, 0x1

    .line 979
    goto :goto_1e

    .line 981
    :pswitch_8b
    const/4 v3, 0x1

    .line 982
    or-int/lit8 v2, v2, 0x2

    .line 983
    goto :goto_1e

    .line 985
    :pswitch_8f
    or-int/lit8 v2, v2, 0x3

    .line 986
    goto :goto_1e

    .line 990
    :pswitch_92
    or-int/lit8 v2, v2, 0x2

    .line 991
    goto :goto_1e

    .line 993
    :pswitch_95
    or-int/lit8 v4, v4, 0x2

    .line 997
    goto :goto_1e

    .line 999
    :pswitch_98
    or-int/lit8 v4, v4, 0x3

    .line 1001
    goto :goto_1e

    .line 1005
    :pswitch_9b
    or-int/lit8 v2, v2, 0x2

    .line 1006
    goto :goto_1e

    .line 1036
    .restart local v0       #action:I
    .restart local v7       #next_mask:I
    .restart local v8       #prev_mask:I
    :cond_9e
    and-int v10, v0, v8

    if-eqz v10, :cond_a8

    .line 1037
    const-string v10, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {p0, v10}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_68

    .line 1039
    :cond_a8
    and-int v10, v0, v7

    if-eqz v10, :cond_b2

    .line 1040
    const-string v10, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {p0, v10}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_68

    .line 1045
    :cond_b2
    invoke-virtual {p0, v13}, Landroid/webkit/WebTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto :goto_68

    .line 968
    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_81
        :pswitch_84
        :pswitch_8b
        :pswitch_8f
        :pswitch_92
        :pswitch_95
        :pswitch_98
        :pswitch_9b
    .end packed-switch
.end method

.method updateCachedTextfield()V
    .registers 3

    .prologue
    .line 1063
    iget-object v0, p0, Landroid/webkit/WebTextView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateCachedTextfield(Ljava/lang/String;)V

    .line 1064
    return-void
.end method
