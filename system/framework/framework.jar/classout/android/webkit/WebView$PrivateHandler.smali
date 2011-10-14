.class Landroid/webkit/WebView$PrivateHandler;
.super Landroid/os/Handler;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 2
    .parameter

    .prologue
    .line 9623
    iput-object p1, p0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 58
    .parameter "msg"

    .prologue
    .line 9627
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_2f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    const/16 v6, 0x75

    if-eq v5, v6, :cond_2f

    .line 9628
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    const/4 v6, 0x1

    if-lt v5, v6, :cond_3b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    const/16 v6, 0xa

    if-gt v5, v6, :cond_3b

    .line 9630
    const-string/jumbo v5, "webview"

    sget-object v6, Landroid/webkit/WebView;->HandlerPrivateDebugString:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aget-object v6, v6, v7

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9640
    :cond_2f
    :goto_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    if-nez v5, :cond_70

    .line 10431
    .end local p0
    .end local p1
    :cond_3a
    :goto_3a
    return-void

    .line 9632
    .restart local p0
    .restart local p1
    :cond_3b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    const/16 v6, 0x65

    if-lt v5, v6, :cond_60

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    const/16 v6, 0x81

    if-gt v5, v6, :cond_60

    .line 9634
    const-string/jumbo v5, "webview"

    sget-object v6, Landroid/webkit/WebView;->HandlerPackageDebugString:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v7, v0

    const/16 v8, 0x65

    sub-int/2addr v7, v8

    aget-object v6, v6, v7

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 9637
    :cond_60
    const-string/jumbo v5, "webview"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 9644
    :cond_70
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    sparse-switch v5, :sswitch_data_1522

    .line 10428
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_3a

    .line 9646
    :sswitch_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v5}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "host"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "username"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "password"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9650
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3a

    .line 9654
    .restart local p0
    :sswitch_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;
    invoke-static {v5}, Landroid/webkit/WebView;->access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "host"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9656
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3a

    .line 9662
    .restart local p0
    :sswitch_d9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_ea

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_fc

    :cond_ea
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3a

    .line 9666
    :cond_fc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v7

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v8}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v8}, Landroid/webkit/WebView;->access$4100(Landroid/webkit/WebView;)F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v9, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v9}, Landroid/webkit/WebView;->access$4200(Landroid/webkit/WebView;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v7

    const/4 v8, 0x1

    #calls: Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$4300(Landroid/webkit/WebView;IIZ)V

    goto/16 :goto_3a

    .line 9674
    :sswitch_141
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3100(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_175

    .line 9675
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_16a

    .line 9676
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x4

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3102(Landroid/webkit/WebView;I)I

    .line 9677
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->updateSelection()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$4400(Landroid/webkit/WebView;)V

    goto/16 :goto_3a

    .line 9681
    :cond_16a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x5

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3102(Landroid/webkit/WebView;I)I

    goto/16 :goto_3a

    .line 9683
    :cond_175
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3100(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3a

    .line 9684
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3102(Landroid/webkit/WebView;I)I

    goto/16 :goto_3a

    .line 9692
    :sswitch_18c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v24

    .line 9694
    .local v24, hitTest:Landroid/webkit/WebView$HitTestResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mAutoSelection:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20d

    if-eqz v24, :cond_1b9

    #getter for: Landroid/webkit/WebView$HitTestResult;->mType:I
    invoke-static/range {v24 .. v24}, Landroid/webkit/WebView$HitTestResult;->access$700(Landroid/webkit/WebView$HitTestResult;)I

    move-result v5

    if-nez v5, :cond_20d

    .line 9697
    :cond_1b9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v15

    .line 9698
    .local v15, contentX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$4100(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$4700(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v16

    .line 9699
    .local v16, contentY:I
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_1ff

    .line 9700
    const-string/jumbo v5, "webview"

    const-string v6, " WebViewCore.ACTION_LONGPRESS : selectClosestWord() called "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9702
    :cond_1ff
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    #calls: Landroid/webkit/WebView;->selectClosestWord(II)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->access$4800(Landroid/webkit/WebView;II)V

    goto/16 :goto_3a

    .line 9708
    .end local v15           #contentX:I
    .end local v16           #contentY:I
    :cond_20d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_223

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_2c2

    .line 9709
    :cond_223
    new-instance v43, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v43 .. v43}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 9710
    .local v43, ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/16 v5, 0x100

    move v0, v5

    move-object/from16 v1, v43

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 9711
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$5100(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v43

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 9712
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$4100(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v43

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 9717
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v43

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 9718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, v43

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 9719
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchProcess:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_2ae

    .line 9720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v5}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v5

    move v0, v5

    move-object/from16 v1, v43

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 9721
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v5}, Landroid/webkit/WebView;->access$4100(Landroid/webkit/WebView;)F

    move-result v5

    move v0, v5

    move-object/from16 v1, v43

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 9723
    :cond_2ae
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_3a

    .line 9724
    .end local v43           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_2c2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3a

    .line 9725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3102(Landroid/webkit/WebView;I)I

    .line 9726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->performLongClick()Z

    .line 9727
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_3a

    .line 9732
    .end local v24           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :sswitch_2e7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->doShortPress()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;)V

    goto/16 :goto_3a

    .line 9736
    :sswitch_2f1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    #calls: Landroid/webkit/WebView;->setContentScrollBy(IIZ)Z
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$5400(Landroid/webkit/WebView;IIZ)Z

    goto/16 :goto_3a

    .line 9739
    .restart local p0
    :sswitch_311
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/webkit/WebView;->mUserScroll:Z

    if-eqz v5, :cond_324

    .line 9742
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/WebView;->mUserScroll:Z

    goto/16 :goto_3a

    .line 9747
    :cond_324
    :sswitch_324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebView;->setContentScrollTo(II)Z
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$5500(Landroid/webkit/WebView;II)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 9751
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/WebView;->mUserScroll:Z

    .line 9752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x83

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_3a

    .line 9757
    :sswitch_35b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebView;->spawnContentScrollTo(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;II)V

    goto/16 :goto_3a

    .line 9760
    :sswitch_36f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/webkit/WebViewCore$RestoreState;

    .line 9763
    .local v39, restoreState:Landroid/webkit/WebViewCore$RestoreState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mScrollX:I

    move v7, v0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v39

    move v2, v6

    move v3, v7

    move v4, v8

    #calls: Landroid/webkit/WebView;->updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$RestoreState;IIZ)V

    goto/16 :goto_3a

    .line 9770
    .end local v39           #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    :sswitch_396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$5800(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_3b3

    .line 9771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5802(Landroid/webkit/WebView;Z)Z

    .line 9772
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->nativeSetRootLayer(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;I)V

    .line 9774
    :cond_3b3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v41

    .line 9776
    .local v41, settings:Landroid/webkit/WebSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v52

    .line 9777
    .local v52, viewWidth:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/webkit/WebViewCore$DrawData;

    .line 9779
    .local v20, draw:Landroid/webkit/WebViewCore$DrawData;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mViewPoint:Landroid/graphics/Point;

    move-object/from16 v51, v0

    .line 9780
    .local v51, viewSize:Landroid/graphics/Point;
    invoke-virtual/range {v41 .. v41}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v48

    .line 9781
    .local v48, useWideViewport:Z
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    move-object/from16 v39, v0

    .line 9782
    .restart local v39       #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    if-eqz v39, :cond_677

    const/4 v5, 0x1

    move/from16 v22, v5

    .line 9783
    .local v22, hasRestoreState:Z
    :goto_3e6
    if-eqz v22, :cond_494

    .line 9784
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v51

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    move v7, v0

    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, v39

    move v2, v6

    move v3, v7

    move v4, v8

    #calls: Landroid/webkit/WebView;->updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$RestoreState;IIZ)V

    .line 9786
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDrawHistory:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_494

    .line 9787
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 9789
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mInitialScaleInPercent:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;)I

    move-result v5

    if-lez v5, :cond_67f

    .line 9790
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mInitialScaleInPercent:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mInitialScaleInPercent:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    iget v8, v8, Landroid/webkit/WebView;->mTextWrapScale:F

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_67c

    const/4 v7, 0x1

    :goto_44a
    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 9814
    :cond_44f
    :goto_44f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPreserveZoom:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$6200(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_46c

    .line 9815
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mScrollX:I

    move v6, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mScrollY:I

    move v7, v0

    #calls: Landroid/webkit/WebView;->setContentScrollTo(II)Z
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$5500(Landroid/webkit/WebView;II)Z

    .line 9822
    :cond_46c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 9824
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->dismissWebSelectDialog()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;)V

    .line 9826
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v5

    if-eqz v5, :cond_494

    .line 9827
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->updateZoomButtonsEnabled()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$200(Landroid/webkit/WebView;)V

    .line 9835
    :cond_494
    move-object/from16 v0, v51

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v5, v6, :cond_728

    move-object/from16 v0, v51

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mLastHeightSent:I

    if-ne v5, v6, :cond_728

    const/4 v5, 0x1

    move/from16 v47, v5

    .line 9837
    .local v47, updateLayout:Z
    :goto_4b3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mFindIsUp:Z
    invoke-static {v8}, Landroid/webkit/WebView;->access$6400(Landroid/webkit/WebView;)Z

    move-result v8

    if-eqz v8, :cond_72d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mFindHeight:I
    invoke-static {v8}, Landroid/webkit/WebView;->access$6500(Landroid/webkit/WebView;)I

    move-result v8

    :goto_4da
    add-int/2addr v7, v8

    move-object v0, v5

    move v1, v6

    move v2, v7

    move/from16 v3, v47

    #calls: Landroid/webkit/WebView;->recordNewContentSize(IIZ)V
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$6600(Landroid/webkit/WebView;IIZ)V

    .line 9840
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_536

    .line 9841
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 9842
    .local v14, b:Landroid/graphics/Rect;
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NEW_PICTURE_MSG_ID {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v14, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v14, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v14, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9845
    .end local v14           #b:Landroid/graphics/Rect;
    :cond_536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    #calls: Landroid/webkit/WebView;->invalidateContentRect(Landroid/graphics/Rect;)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$6700(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 9846
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v5, :cond_56d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_56d

    .line 9848
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    move-object v6, v0

    invoke-interface {v5, v6}, Landroid/webkit/OnPinchZoomListener;->onUpdateContents(Landroid/graphics/Region;)V

    .line 9851
    :cond_56d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;
    invoke-static {v5}, Landroid/webkit/WebView;->access$6800(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;

    move-result-object v5

    if-eqz v5, :cond_592

    .line 9852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;
    invoke-static {v5}, Landroid/webkit/WebView;->access$6800(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    .line 9854
    :cond_592
    if-eqz v48, :cond_5c4

    .line 9859
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    sget v6, Landroid/webkit/WebView;->sMaxViewportWidth:I

    move/from16 v0, v52

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    #getter for: Landroid/webkit/WebView;->mDefaultScale:F
    invoke-static {v8}, Landroid/webkit/WebView;->access$6900(Landroid/webkit/WebView;)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    move v8, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mViewPoint:Landroid/graphics/Point;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    .line 9864
    :cond_5c4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mMinZoomScaleFixed:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$7000(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_5e4

    .line 9865
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    iget v7, v7, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    #setter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$2002(Landroid/webkit/WebView;F)F

    .line 9867
    :cond_5e4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDrawHistory:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_64e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-eqz v5, :cond_64e

    .line 9870
    move/from16 v0, v52

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mInvActualScale:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$7100(Landroid/webkit/WebView;)F

    move-result v6

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-lez v5, :cond_64e

    .line 9872
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    iget v7, v7, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    iget v8, v8, Landroid/webkit/WebView;->mTextWrapScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {}, Landroid/webkit/WebView;->access$2800()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_730

    const/4 v7, 0x1

    :goto_649
    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 9878
    :cond_64e
    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$DrawData;->mFocusSizeChanged:Z

    move v5, v0

    if-eqz v5, :cond_669

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_669

    .line 9879
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/webkit/WebView;->mFocusSizeChanged:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7202(Landroid/webkit/WebView;Z)Z

    .line 9881
    :cond_669
    if-eqz v22, :cond_3a

    .line 9882
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v5}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    goto/16 :goto_3a

    .line 9782
    .end local v22           #hasRestoreState:Z
    .end local v47           #updateLayout:Z
    :cond_677
    const/4 v5, 0x0

    move/from16 v22, v5

    goto/16 :goto_3e6

    .line 9790
    .restart local v22       #hasRestoreState:Z
    :cond_67c
    const/4 v7, 0x0

    goto/16 :goto_44a

    .line 9793
    :cond_67f
    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6a7

    .line 9794
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    move v6, v0

    iput v6, v5, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 9795
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    move v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    goto/16 :goto_44f

    .line 9798
    :cond_6a7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    if-eqz v48, :cond_71d

    invoke-virtual/range {v41 .. v41}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v6

    if-eqz v6, :cond_71d

    const/4 v6, 0x1

    :goto_6b5
    iput-boolean v6, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 9801
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-eqz v5, :cond_71f

    .line 9802
    move/from16 v0, v52

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x4448

    div-float v40, v5, v6

    .line 9807
    .local v40, scale:F
    :goto_6c8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mPreserveZoom:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$6200(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_44f

    .line 9808
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ZoomScale 3 mPreserveZoom: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mPreserveZoom:Z
    invoke-static {v7}, Landroid/webkit/WebView;->access$6200(Landroid/webkit/WebView;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9809
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mTextWrapScale:F

    sub-float v6, v40, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {}, Landroid/webkit/WebView;->access$2800()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_726

    const/4 v6, 0x1

    :goto_710
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move/from16 v1, v40

    move v2, v6

    move v3, v7

    move-object v4, v8

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    goto/16 :goto_44f

    .line 9798
    .end local v40           #scale:F
    :cond_71d
    const/4 v6, 0x0

    goto :goto_6b5

    .line 9805
    :cond_71f
    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    move/from16 v40, v0

    .restart local v40       #scale:F
    goto :goto_6c8

    .line 9809
    :cond_726
    const/4 v6, 0x0

    goto :goto_710

    .line 9835
    .end local v40           #scale:F
    :cond_728
    const/4 v5, 0x0

    move/from16 v47, v5

    goto/16 :goto_4b3

    .line 9837
    .restart local v47       #updateLayout:Z
    :cond_72d
    const/4 v8, 0x0

    goto/16 :goto_4da

    .line 9872
    :cond_730
    const/4 v7, 0x0

    goto/16 :goto_649

    .line 9888
    .end local v20           #draw:Landroid/webkit/WebViewCore$DrawData;
    .end local v22           #hasRestoreState:Z
    .end local v39           #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    .end local v41           #settings:Landroid/webkit/WebSettings;
    .end local v47           #updateLayout:Z
    .end local v48           #useWideViewport:Z
    .end local v51           #viewSize:Landroid/graphics/Point;
    .end local v52           #viewWidth:I
    :sswitch_733
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebView;->nativeCreate(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7300(Landroid/webkit/WebView;I)V

    goto/16 :goto_3a

    .line 9893
    :sswitch_742
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 9896
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$7400(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_7dc

    .line 9898
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "password"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b3

    .line 9899
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v45

    .line 9900
    .local v45, text:Landroid/text/Spannable;
    invoke-static/range {v45 .. v45}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v42

    .line 9901
    .local v42, start:I
    invoke-static/range {v45 .. v45}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v21

    .line 9902
    .local v21, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 9905
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v35

    .line 9907
    .local v35, pword:Landroid/text/Spannable;
    move-object/from16 v0, v35

    move/from16 v1, v42

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_3a

    .line 9910
    .end local v21           #end:I
    .end local v35           #pword:Landroid/text/Spannable;
    .end local v42           #start:I
    .end local v45           #text:Landroid/text/Spannable;
    :cond_7b3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mTextGeneration:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$7500(Landroid/webkit/WebView;)I

    move-result v6

    if-ne v5, v6, :cond_3a

    .line 9911
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 9916
    .restart local p0
    :cond_7dc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->remove()V

    goto/16 :goto_3a

    .line 9922
    :sswitch_7ea
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7600(Landroid/webkit/WebView;Z)V

    .line 9923
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/webkit/WebViewCore$TextSelectionData;

    move-object v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p0

    #calls: Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$7700(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_3a

    .line 9930
    .restart local p0
    :sswitch_814
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 9931
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/webkit/WebViewCore$TextSelectionData;

    move-object v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p0

    #calls: Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$7700(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_3a

    .line 9935
    .restart local p0
    :sswitch_83d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 9937
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 9938
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v25

    .line 9943
    .local v25, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v25, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 9944
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto/16 :goto_3a

    .line 9949
    .end local v25           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local p1
    :sswitch_89c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    #calls: Landroid/webkit/WebView;->navHandledKey(IIZJ)Z
    invoke-static/range {v5 .. v10}, Landroid/webkit/WebView;->access$7800(Landroid/webkit/WebView;IIZJ)Z

    goto/16 :goto_3a

    .line 9954
    :sswitch_8af
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->selectionDone()V

    .line 9955
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_8ec

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->nativeCursorIsTextInput()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$7900(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_8d8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$7400(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_8ec

    .line 9956
    :cond_8d8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->bringIntoView()V

    .line 9957
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 9960
    :cond_8ec
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$8000(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 9962
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;
    invoke-static {v6}, Landroid/webkit/WebView;->access$8100(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mFocusedNodePointer:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$8200(Landroid/webkit/WebView;)I

    move-result v7

    #calls: Landroid/webkit/WebView;->nativeGetNodeBounds(Ljava/lang/String;I)Landroid/graphics/Rect;
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$8300(Landroid/webkit/WebView;Ljava/lang/String;I)Landroid/graphics/Rect;

    move-result-object v37

    .line 9963
    .local v37, rect:Landroid/graphics/Rect;
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Select Control "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v37 .. v37}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9964
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, v37

    move v2, v6

    #calls: Landroid/webkit/WebView;->requestSelectElementOnScreen(Landroid/graphics/Rect;Z)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->access$8400(Landroid/webkit/WebView;Landroid/graphics/Rect;Z)V

    goto/16 :goto_3a

    .line 9969
    .end local v37           #rect:Landroid/graphics/Rect;
    :sswitch_93e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    goto/16 :goto_3a

    .line 9972
    :sswitch_949
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/graphics/Rect;

    .line 9973
    .local v36, r:Landroid/graphics/Rect;
    if-nez v36, :cond_95d

    .line 9974
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_3a

    .line 9978
    :cond_95d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    #calls: Landroid/webkit/WebView;->viewInvalidate(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebView;->access$8500(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_3a

    .line 9983
    .end local v36           #r:Landroid/graphics/Rect;
    :sswitch_97b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_3a

    .line 9987
    :sswitch_985
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_997

    .line 9991
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5802(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_3a

    .line 9993
    :cond_997
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5802(Landroid/webkit/WebView;Z)Z

    .line 9994
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #calls: Landroid/webkit/WebView;->nativeSetRootLayer(I)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;I)V

    .line 9995
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_3a

    .line 10000
    :sswitch_9b7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/webkit/WebTextView$AutoCompleteAdapter;

    .line 10001
    .local v13, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 10002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto/16 :goto_3a

    .line 10006
    .end local v13           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :sswitch_9e0
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 10007
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_3a

    .line 10013
    :sswitch_9f1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mGotCenterDown:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8602(Landroid/webkit/WebView;Z)Z

    .line 10014
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mTrackballDown:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8702(Landroid/webkit/WebView;Z)Z

    .line 10015
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_3a

    .line 10021
    :sswitch_a0d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    if-eqz v5, :cond_a9c

    .line 10022
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    if-eqz v6, :cond_a9a

    const/4 v6, 0x1

    :goto_a21
    #setter for: Landroid/webkit/WebView;->mForwardTouchEvents_plugin:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8802(Landroid/webkit/WebView;Z)Z

    .line 10026
    :goto_a24
    const-string v5, "1"

    const-string v6, "debug.browser.noforwardevt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 10031
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mForwardTouchEvents_plugin:Z
    invoke-static {v6}, Landroid/webkit/WebView;->access$8800(Landroid/webkit/WebView;)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mForwardTouchEvents_others:Z
    invoke-static {v7}, Landroid/webkit/WebView;->access$8900(Landroid/webkit/WebView;)Z

    move-result v7

    or-int/2addr v6, v7

    #setter for: Landroid/webkit/WebView;->mForwardTouchEvents:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9002(Landroid/webkit/WebView;Z)Z

    .line 10032
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_3a

    .line 10033
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mForwardTouchEvents: p="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mForwardTouchEvents_plugin:Z
    invoke-static {v7}, Landroid/webkit/WebView;->access$8800(Landroid/webkit/WebView;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", o="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mForwardTouchEvents_others:Z
    invoke-static {v7}, Landroid/webkit/WebView;->access$8900(Landroid/webkit/WebView;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", all="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mForwardTouchEvents:Z
    invoke-static {v7}, Landroid/webkit/WebView;->access$9000(Landroid/webkit/WebView;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 10022
    :cond_a9a
    const/4 v6, 0x0

    goto :goto_a21

    .line 10024
    :cond_a9c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    if-eqz v6, :cond_aae

    const/4 v6, 0x1

    :goto_aa9
    #setter for: Landroid/webkit/WebView;->mForwardTouchEvents_others:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8902(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_a24

    :cond_aae
    const/4 v6, 0x0

    goto :goto_aa9

    .line 10041
    :sswitch_ab0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 10044
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-nez v5, :cond_b0d

    .line 10045
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_ae7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_ae7

    .line 10050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_ae5

    const/4 v6, 0x3

    :goto_ae1
    iput v6, v5, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_3a

    :cond_ae5
    const/4 v6, 0x2

    goto :goto_ae1

    .line 10052
    :cond_ae7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3a

    .line 10057
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b0b

    const/4 v6, 0x3

    :goto_b07
    iput v6, v5, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_3a

    :cond_b0b
    const/4 v6, 0x0

    goto :goto_b07

    .line 10060
    :cond_b0d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    if-nez v5, :cond_3a

    .line 10063
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/webkit/WebViewCore$TouchEventData;

    .line 10064
    .restart local v43       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v5, v0

    sparse-switch v5, :sswitch_data_15d8

    goto/16 :goto_3a

    .line 10066
    :sswitch_b26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9102(Landroid/webkit/WebView;F)F

    .line 10067
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9202(Landroid/webkit/WebView;F)F

    .line 10068
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9302(Landroid/webkit/WebView;I)I

    goto/16 :goto_3a

    .line 10072
    :sswitch_b4b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$9300(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_b82

    .line 10073
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x3

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9302(Landroid/webkit/WebView;I)I

    .line 10074
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9102(Landroid/webkit/WebView;F)F

    .line 10075
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9202(Landroid/webkit/WebView;F)F

    .line 10076
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->startDrag()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$9400(Landroid/webkit/WebView;)V

    .line 10078
    :cond_b82
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$9500(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$9100(Landroid/webkit/WebView;)F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v7, v0

    sub-float/2addr v6, v7

    float-to-int v6, v6

    #calls: Landroid/webkit/WebView;->pinLocX(I)I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9600(Landroid/webkit/WebView;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$9700(Landroid/webkit/WebView;)I

    move-result v6

    sub-int v18, v5, v6

    .line 10081
    .local v18, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$9800(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$9200(Landroid/webkit/WebView;)F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v7, v0

    sub-float/2addr v6, v7

    float-to-int v6, v6

    #calls: Landroid/webkit/WebView;->pinLocY(I)I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9900(Landroid/webkit/WebView;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$10000(Landroid/webkit/WebView;)I

    move-result v6

    sub-int v19, v5, v6

    .line 10084
    .local v19, deltaY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    #calls: Landroid/webkit/WebView;->doDrag(II)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->access$10100(Landroid/webkit/WebView;II)V

    .line 10085
    if-eqz v18, :cond_bfc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchX:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9102(Landroid/webkit/WebView;F)F

    .line 10086
    :cond_bfc
    if-eqz v19, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastDeferTouchY:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9202(Landroid/webkit/WebView;F)F

    goto/16 :goto_3a

    .line 10091
    .end local v18           #deltaX:I
    .end local v19           #deltaY:I
    :sswitch_c0d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$9300(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_c62

    .line 10093
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v5}, Landroid/webkit/WebView;->access$10600(Landroid/webkit/WebView;)Landroid/widget/OverScroller;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$10200(Landroid/webkit/WebView;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$10300(Landroid/webkit/WebView;)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v9, v0

    #calls: Landroid/webkit/WebView;->computeMaxScrollX()I
    invoke-static {v9}, Landroid/webkit/WebView;->access$10400(Landroid/webkit/WebView;)I

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v11, v0

    #calls: Landroid/webkit/WebView;->computeMaxScrollY()I
    invoke-static {v11}, Landroid/webkit/WebView;->access$10500(Landroid/webkit/WebView;)I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 10096
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    .line 10097
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 10098
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 10100
    :cond_c62
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9302(Landroid/webkit/WebView;I)I

    goto/16 :goto_3a

    .line 10104
    :sswitch_c6d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3902(Landroid/webkit/WebView;F)F

    .line 10105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$4102(Landroid/webkit/WebView;F)F

    .line 10106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->doDoubleTap()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$10700(Landroid/webkit/WebView;)V

    .line 10107
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9302(Landroid/webkit/WebView;I)I

    goto/16 :goto_3a

    .line 10110
    :sswitch_c9a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v24

    .line 10111
    .restart local v24       #hitTest:Landroid/webkit/WebView$HitTestResult;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v6

    if-eq v5, v6, :cond_cbb

    if-eqz v24, :cond_ccb

    #getter for: Landroid/webkit/WebView$HitTestResult;->mType:I
    invoke-static/range {v24 .. v24}, Landroid/webkit/WebView$HitTestResult;->access$700(Landroid/webkit/WebView$HitTestResult;)I

    move-result v5

    if-eqz v5, :cond_ccb

    .line 10113
    :cond_cbb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->performLongClick()Z

    .line 10114
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 10116
    :cond_ccb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    #setter for: Landroid/webkit/WebView;->mDeferTouchMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9302(Landroid/webkit/WebView;I)I

    goto/16 :goto_3a

    .line 10123
    .end local v24           #hitTest:Landroid/webkit/WebView$HitTestResult;
    .end local v43           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :sswitch_cd6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_ce7

    .line 10124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->hideSoftKeyboard()V
    invoke-static {v5}, Landroid/webkit/WebView;->access$10800(Landroid/webkit/WebView;)V

    goto/16 :goto_3a

    .line 10127
    :cond_ce7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    if-nez v5, :cond_cf9

    .line 10128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7600(Landroid/webkit/WebView;Z)V

    goto/16 :goto_3a

    .line 10130
    :cond_cf9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #calls: Landroid/webkit/WebView;->displaySoftKeyboard(Z)V
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7600(Landroid/webkit/WebView;Z)V

    goto/16 :goto_3a

    .line 10137
    :sswitch_d04
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mFindIsUp:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$6400(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 10138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;
    invoke-static {v6}, Landroid/webkit/WebView;->access$10900(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 10143
    :sswitch_d22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x2

    #setter for: Landroid/webkit/WebView;->mHeldMotionless:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$11002(Landroid/webkit/WebView;I)I

    .line 10144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    .line 10148
    :sswitch_d33
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$3100(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mHeldMotionless:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$11000(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3a

    .line 10150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    const/4 v7, 0x0

    #calls: Landroid/webkit/WebView;->awakenScrollBars(IZ)Z
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$11100(Landroid/webkit/WebView;IZ)Z

    .line 10152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3a

    .line 10159
    :sswitch_d76
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    #calls: Landroid/webkit/WebView;->doMotionUp(II)V
    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$11200(Landroid/webkit/WebView;II)V

    goto/16 :goto_3a

    .line 10163
    :sswitch_d8a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Landroid/view/View;

    .line 10164
    .local v49, view:Landroid/view/View;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    .line 10166
    .local v32, npp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v5, :cond_db3

    .line 10167
    const-string/jumbo v5, "webview"

    const-string v6, "Should not have another full screen."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v5}, Landroid/webkit/PluginFullScreenHolder;->dismiss()V

    .line 10170
    :cond_db3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    new-instance v6, Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/webkit/PluginFullScreenHolder;-><init>(Landroid/webkit/WebView;I)V

    iput-object v6, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 10171
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    move-object v0, v5

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/webkit/PluginFullScreenHolder;->setContentView(Landroid/view/View;)V

    .line 10172
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/PluginFullScreenHolder;->setCancelable(Z)V

    .line 10173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/PluginFullScreenHolder;->setCanceledOnTouchOutside(Z)V

    .line 10174
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v5}, Landroid/webkit/PluginFullScreenHolder;->show()V

    goto/16 :goto_3a

    .line 10179
    .end local v32           #npp:I
    .end local v49           #view:Landroid/view/View;
    :sswitch_df7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inFullScreenMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 10180
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v5}, Landroid/webkit/PluginFullScreenHolder;->dismiss()V

    .line 10181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    goto/16 :goto_3a

    .line 10186
    :sswitch_e16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 10187
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 10188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_3a

    .line 10193
    :sswitch_e33
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/webkit/WebViewCore$ShowRectData;

    .line 10195
    .local v17, data:Landroid/webkit/WebViewCore$ShowRectData;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mHasAnchorDiff:Z

    move v5, v0

    if-eqz v5, :cond_e51

    .line 10196
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 10197
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v5}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 10200
    :cond_e51
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$11300(Landroid/webkit/WebView;)I

    move-result v54

    .line 10201
    .local v54, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v26

    .line 10202
    .local v26, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v53

    .line 10203
    .local v53, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v28

    .line 10204
    .local v28, maxWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v52

    .line 10206
    .restart local v52       #viewWidth:I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mHasAnchorDiff:Z

    move v5, v0

    if-eqz v5, :cond_105e

    .line 10207
    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mOldAnchorX:I

    move v5, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v33, v0

    .line 10208
    .local v33, oldAnchorX:F
    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mNewAnchorX:I

    move v5, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v29, v0

    .line 10209
    .local v29, newAnchorX:F
    sub-float v5, v29, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int v54, v54, v5

    .line 10219
    .end local v29           #newAnchorX:F
    .end local v33           #oldAnchorX:F
    :goto_eb5
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_f2e

    .line 10220
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showRectMsg=(left="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",width="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",maxWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",viewWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",xPercentInDoc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",xPercentInView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10228
    :cond_f2e
    const/4 v5, 0x0

    add-int v6, v54, v52

    move/from16 v0, v28

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v6, v6, v52

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v54

    .line 10230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v46

    .line 10231
    .local v46, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v23

    .line 10232
    .local v23, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v27

    .line 10233
    .local v27, maxHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v50

    .line 10235
    .local v50, viewHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$11600(Landroid/webkit/WebView;)I

    move-result v55

    .line 10236
    .local v55, y:I
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mHasAnchorDiff:Z

    move v5, v0

    if-eqz v5, :cond_10a3

    .line 10237
    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mOldAnchorY:I

    move v5, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v34, v0

    .line 10238
    .local v34, oldAnchorY:F
    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mNewAnchorY:I

    move v5, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v30, v0

    .line 10239
    .local v30, newAnchorY:F
    sub-float v5, v30, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int v55, v55, v5

    .line 10240
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #calls: Landroid/webkit/WebView;->getViewHeightWithTitle()I
    invoke-static {v5}, Landroid/webkit/WebView;->access$11700(Landroid/webkit/WebView;)I

    move-result v50

    .line 10241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v5

    add-int v27, v27, v5

    .line 10247
    .end local v30           #newAnchorY:F
    .end local v34           #oldAnchorY:F
    :goto_fb6
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_102f

    .line 10248
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showRectMsg=(top="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",maxHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",viewHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",yPercentInDoc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",yPercentInView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10256
    :cond_102f
    const/4 v5, 0x0

    add-int v6, v55, v50

    move/from16 v0, v27

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v6, v6, v50

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v55

    .line 10260
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v6

    sub-int v6, v55, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v55

    .line 10262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v54

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto/16 :goto_3a

    .line 10212
    .end local v23           #height:I
    .end local v27           #maxHeight:I
    .end local v46           #top:I
    .end local v50           #viewHeight:I
    .end local v55           #y:I
    :cond_105e
    move/from16 v0, v53

    move/from16 v1, v52

    if-ge v0, v1, :cond_1079

    .line 10214
    div-int/lit8 v5, v53, 0x2

    add-int v5, v5, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$11400(Landroid/webkit/WebView;)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v6, v52, 0x2

    sub-int/2addr v5, v6

    add-int v54, v54, v5

    goto/16 :goto_eb5

    .line 10216
    :cond_1079
    move/from16 v0, v26

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    move v6, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$11500(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    move v6, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    add-int v54, v54, v5

    goto/16 :goto_eb5

    .line 10243
    .restart local v23       #height:I
    .restart local v27       #maxHeight:I
    .restart local v46       #top:I
    .restart local v50       #viewHeight:I
    .restart local v55       #y:I
    :cond_10a3
    move/from16 v0, v46

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    move v6, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v6}, Landroid/webkit/WebView;->access$11800(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    move v6, v0

    move/from16 v0, v50

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    add-int v55, v55, v5

    goto/16 :goto_fb6

    .line 10267
    .end local v17           #data:Landroid/webkit/WebViewCore$ShowRectData;
    .end local v23           #height:I
    .end local v26           #left:I
    .end local v27           #maxHeight:I
    .end local v28           #maxWidth:I
    .end local v46           #top:I
    .end local v50           #viewHeight:I
    .end local v52           #viewWidth:I
    .end local v53           #width:I
    .end local v54           #x:I
    .end local v55           #y:I
    :sswitch_10cd
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/graphics/Rect;

    .line 10268
    .restart local v36       #r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 10269
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v9

    #calls: Landroid/webkit/WebView;->centerFitRect(IIII)V
    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebView;->access$11900(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_3a

    .line 10273
    .end local v36           #r:Landroid/graphics/Rect;
    :sswitch_10f9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mHorizontalScrollBarMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$12002(Landroid/webkit/WebView;I)I

    .line 10274
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    #setter for: Landroid/webkit/WebView;->mVerticalScrollBarMode:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$12102(Landroid/webkit/WebView;I)I

    goto/16 :goto_3a

    .line 10278
    :sswitch_1115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    #calls: Landroid/webkit/WebView;->doAdaptiveZoom(Landroid/graphics/Rect;)V
    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$12200(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    goto/16 :goto_3a

    .line 10282
    .restart local p0
    :sswitch_112a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;
    invoke-static {v6}, Landroid/webkit/WebView;->access$8100(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mFocusedNodePointer:I
    invoke-static {v7}, Landroid/webkit/WebView;->access$8200(Landroid/webkit/WebView;)I

    move-result v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebView;->nativeMoveCursorToInput(Ljava/lang/String;II)I

    move-result v31

    .line 10284
    .local v31, nextInputType:I
    if-nez v31, :cond_3a

    .line 10288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 10293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 10294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    .line 10296
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x76

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3a

    .line 10301
    .end local v31           #nextInputType:I
    :sswitch_117d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/webkit/WebView$WebSelectRequest;

    .line 10302
    .local v38, req:Landroid/webkit/WebView$WebSelectRequest;
    move-object/from16 v0, v38

    iget-boolean v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_multiSelection:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11b0

    .line 10303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_stringsArray:[Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_enabledArray:[I

    move-object v7, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_selectedArray:[I

    move-object v8, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidateName:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidatePointer:I

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->requestListBox([Ljava/lang/String;[I[ILjava/lang/String;I)V

    goto/16 :goto_3a

    .line 10308
    :cond_11b0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_stringsArray:[Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_enabledArray:[I

    move-object v7, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_selectedArray:[I

    move-object v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidateName:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidatePointer:I

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->requestListBox([Ljava/lang/String;[IILjava/lang/String;I)V

    goto/16 :goto_3a

    .line 10314
    .end local v38           #req:Landroid/webkit/WebView$WebSelectRequest;
    :sswitch_11d6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->nativeClearCursor()V

    goto/16 :goto_3a

    .line 10318
    :sswitch_11e0
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_11ec

    .line 10319
    const-string/jumbo v5, "webview"

    const-string v6, "HandleMessage : UPDATE_SELECTION_MSG_ID is delivered."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10321
    :cond_11ec
    const/16 v44, 0x0

    .line 10322
    .local v44, tempCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v44, v0

    .line 10323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v0, p1

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 10325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v5, :cond_1458

    .line 10327
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_128d

    .line 10328
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Granularity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    iget-object v7, v7, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v7, v7, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " EndPoint->left "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    iget-object v7, v7, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v7, v7, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " EndPoint->top "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    iget-object v7, v7, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v7, v7, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " EndPoint->right "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    iget-object v7, v7, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v7, v7, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " EndPoint->bottom "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    iget-object v7, v7, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v7, v7, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10337
    :cond_128d
    if-nez v44, :cond_133e

    .line 10338
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchSelectionHandler:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$12300(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_12ce

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-eqz v5, :cond_12b1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_12ce

    .line 10340
    :cond_12b1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$4100(Landroid/webkit/WebView;)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x1

    #calls: Landroid/webkit/WebView;->showMagnifier(IIZ)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$12400(Landroid/webkit/WebView;IIZ)V

    .line 10373
    :cond_12ce
    :goto_12ce
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebSelectionOn:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$12700(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_12e2

    .line 10374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/webkit/WebView;->mWebSelectionOn:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$12702(Landroid/webkit/WebView;Z)Z

    .line 10376
    :cond_12e2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_132c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_132c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v5}, Landroid/graphics/Region;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_132c

    .line 10378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 10379
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mWebSelectionOn:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$12702(Landroid/webkit/WebView;Z)Z

    .line 10380
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_132c

    .line 10381
    const-string/jumbo v5, "webview"

    const-string v6, "UPDATE_SELECTION_MSG_ID Copy Info Invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10399
    :cond_132c
    :goto_132c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->sendselectionmessage()V

    .line 10400
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_3a

    .line 10341
    :cond_133e
    move-object/from16 v0, v44

    iget v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v6, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-eq v5, v6, :cond_1416

    .line 10342
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_1374

    .line 10343
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Granularity change : Updated Granularity : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    iget-object v7, v7, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v7, v7, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10345
    :cond_1374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchSelectionHandler:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$12300(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_13dc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-eqz v5, :cond_1396

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_13dc

    .line 10349
    :cond_1396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_13ae

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_13b9

    .line 10351
    :cond_13ae
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    #setter for: Landroid/webkit/WebView;->mController:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$12502(Landroid/webkit/WebView;I)I

    goto/16 :goto_12ce

    .line 10352
    :cond_13b9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_13d1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_12ce

    .line 10354
    :cond_13d1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x2

    #setter for: Landroid/webkit/WebView;->mController:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$12502(Landroid/webkit/WebView;I)I

    goto/16 :goto_12ce

    .line 10356
    :cond_13dc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_12ce

    .line 10357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;
    invoke-static {v5}, Landroid/webkit/WebView;->access$3500(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebMagnifier;->hide()V

    .line 10359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_140b

    .line 10360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x6

    #setter for: Landroid/webkit/WebView;->mController:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$12502(Landroid/webkit/WebView;I)I

    goto/16 :goto_12ce

    .line 10362
    :cond_140b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x5

    #setter for: Landroid/webkit/WebView;->mController:I
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$12502(Landroid/webkit/WebView;I)I

    goto/16 :goto_12ce

    .line 10369
    :cond_1416
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mTouchSelectionHandler:Z
    invoke-static {v5}, Landroid/webkit/WebView;->access$12300(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_12ce

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mbIsNewWordSelected:Z
    invoke-static {v6}, Landroid/webkit/WebView;->access$12600(Landroid/webkit/WebView;)Z

    move-result v6

    if-ne v5, v6, :cond_12ce

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_12ce

    .line 10370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchX:F
    invoke-static {v6}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    #getter for: Landroid/webkit/WebView;->mLastTouchY:F
    invoke-static {v7}, Landroid/webkit/WebView;->access$4100(Landroid/webkit/WebView;)F

    move-result v7

    float-to-int v7, v7

    const/4 v8, 0x1

    #calls: Landroid/webkit/WebView;->showMagnifier(IIZ)V
    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$12400(Landroid/webkit/WebView;IIZ)V

    goto/16 :goto_12ce

    .line 10385
    :cond_1458
    if-eqz v44, :cond_1475

    .line 10388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x8d

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10393
    :cond_1475
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Landroid/webkit/WebView;->mWebSelectionOn:Z
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$12702(Landroid/webkit/WebView;Z)Z

    .line 10394
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;
    invoke-static {v5}, Landroid/webkit/WebView;->access$3500(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebMagnifier;->hide()V

    .line 10395
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_132c

    .line 10396
    const-string/jumbo v5, "webview"

    const-string v6, "Not able to select closest word"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_132c

    .line 10405
    .end local v44           #tempCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;
    .restart local p1
    :sswitch_1498
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;
    invoke-static {v5}, Landroid/webkit/WebView;->access$12800(Landroid/webkit/WebView;)Landroid/webkit/WebView$WebTextSelectionListener;

    move-result-object v5

    if-eqz v5, :cond_3a

    .line 10407
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v12, v0

    .line 10408
    .local v12, Status:I
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_14c5

    .line 10409
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECTION_CONTROLS_NOTIFY Status Event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10412
    :cond_14c5
    const/16 v5, 0x8

    if-ne v12, v5, :cond_1514

    .line 10414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v5}, Landroid/webkit/WebView;->access$10600(Landroid/webkit/WebView;)Landroid/widget/OverScroller;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_14ee

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v5, :cond_1514

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1514

    .line 10416
    :cond_14ee
    const-string/jumbo v5, "webview"

    const-string v6, "SELECTION_CONTROLS_NOTIFY still scrolling"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x8d

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x320

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3a

    .line 10422
    :cond_1514
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    #getter for: Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;
    invoke-static {v5}, Landroid/webkit/WebView;->access$12800(Landroid/webkit/WebView;)Landroid/webkit/WebView$WebTextSelectionListener;

    move-result-object v5

    invoke-interface {v5, v12}, Landroid/webkit/WebView$WebTextSelectionListener;->onSelectionChanged(I)V

    goto/16 :goto_3a

    .line 9644
    :sswitch_data_1522
    .sparse-switch
        0x1 -> :sswitch_7c
        0x2 -> :sswitch_b4
        0x3 -> :sswitch_141
        0x4 -> :sswitch_18c
        0x5 -> :sswitch_2e7
        0x6 -> :sswitch_9b7
        0x7 -> :sswitch_9e0
        0x8 -> :sswitch_d22
        0x9 -> :sswitch_d33
        0xa -> :sswitch_d9
        0x65 -> :sswitch_324
        0x66 -> :sswitch_2f1
        0x67 -> :sswitch_35b
        0x68 -> :sswitch_311
        0x69 -> :sswitch_396
        0x6a -> :sswitch_8af
        0x6b -> :sswitch_733
        0x6c -> :sswitch_742
        0x6d -> :sswitch_36f
        0x6e -> :sswitch_89c
        0x6f -> :sswitch_93e
        0x70 -> :sswitch_814
        0x71 -> :sswitch_e33
        0x72 -> :sswitch_9f1
        0x73 -> :sswitch_ab0
        0x74 -> :sswitch_a0d
        0x75 -> :sswitch_949
        0x76 -> :sswitch_cd6
        0x77 -> :sswitch_d76
        0x78 -> :sswitch_d8a
        0x79 -> :sswitch_df7
        0x7a -> :sswitch_e16
        0x7b -> :sswitch_97b
        0x7c -> :sswitch_985
        0x7d -> :sswitch_83d
        0x7e -> :sswitch_d04
        0x7f -> :sswitch_10cd
        0x80 -> :sswitch_7ea
        0x81 -> :sswitch_10f9
        0x82 -> :sswitch_1115
        0x83 -> :sswitch_112a
        0x84 -> :sswitch_117d
        0x85 -> :sswitch_11d6
        0x8c -> :sswitch_11e0
        0x8d -> :sswitch_1498
    .end sparse-switch

    .line 10064
    :sswitch_data_15d8
    .sparse-switch
        0x0 -> :sswitch_b26
        0x1 -> :sswitch_c0d
        0x2 -> :sswitch_b4b
        0x3 -> :sswitch_c0d
        0x100 -> :sswitch_c9a
        0x200 -> :sswitch_c6d
    .end sparse-switch
.end method
