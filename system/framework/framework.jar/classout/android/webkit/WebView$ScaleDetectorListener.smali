.class Landroid/webkit/WebView$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .registers 2
    .parameter

    .prologue
    .line 6809
    iput-object p1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6809
    invoke-direct {p0, p1}, Landroid/webkit/WebView$ScaleDetectorListener;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .registers 14
    .parameter "detector"

    .prologue
    const-wide v10, 0x408f400000000000L

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 6922
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;
    invoke-static {v2}, Landroid/webkit/WebView;->access$3500(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;

    move-result-object v2

    iget-boolean v2, v2, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v9, v2, :cond_1a

    .line 6923
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;
    invoke-static {v2}, Landroid/webkit/WebView;->access$3500(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebMagnifier;->hide()V

    .line 6928
    :cond_1a
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_6b

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-ne v2, v9, :cond_6b

    .line 6931
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$3100(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_5a

    .line 6932
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->cancelTouch()V

    .line 6933
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 6935
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iput-boolean v8, v2, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6938
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 6939
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 6944
    :cond_5a
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2, p1}, Landroid/webkit/OnPinchZoomListener;->onNewScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v0

    .line 6947
    .local v0, flag:Z
    if-ne v0, v9, :cond_69

    .line 6949
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2, v9}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;Z)Z

    :cond_69
    move v2, v0

    .line 6982
    .end local v0           #flag:Z
    :goto_6a
    return v2

    .line 6959
    :cond_6b
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrTilt()I

    move-result v2

    if-eqz v2, :cond_e5

    .line 6960
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrTilt()I

    move-result v4

    int-to-float v4, v4

    float-to-double v4, v4

    const-wide v6, 0x406f400000000000L

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v4}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v4

    float-to-double v4, v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v10

    double-to-float v1, v2

    .line 6963
    .local v1, scale:F
    :goto_93
    invoke-virtual {p1, v8}, Landroid/webkit/WebviewScaleGestureDetector;->setCurrTilt(I)I

    .line 6965
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v2

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {}, Landroid/webkit/WebView;->access$2800()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_10c

    .line 6966
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2, v9}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;Z)Z

    .line 6968
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_fd

    .line 6969
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v2

    const/high16 v3, 0x3fa0

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 6973
    :goto_c6
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mZoomCenterX:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2202(Landroid/webkit/WebView;F)F

    .line 6974
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mZoomCenterY:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2302(Landroid/webkit/WebView;F)F

    .line 6978
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static {v2, v1, v8, v8, v3}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 6979
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    move v2, v9

    .line 6980
    goto :goto_6a

    .line 6962
    .end local v1           #scale:F
    :cond_e5
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059

    div-double/2addr v2, v4

    double-to-float v1, v2

    .restart local v1       #scale:F
    goto :goto_93

    .line 6971
    :cond_fd
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v2

    const v3, 0x3f4ccccd

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_c6

    :cond_10c
    move v2, v8

    .line 6982
    goto/16 :goto_6a
.end method

.method public onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .registers 9
    .parameter "detector"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 6814
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 6815
    .local v1, tiltStart:J
    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebviewScaleGestureDetector;->setTiltStartTime(J)J

    .line 6816
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v3, :cond_26

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v3

    if-eq v3, v6, :cond_26

    .line 6818
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->registerTiltListener()V

    .line 6819
    const-string v3, "Webview_tilt"

    const-string/jumbo v4, "tilt is registered in webview"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6821
    :cond_26
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->cancelTouch()V

    .line 6822
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 6824
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iput-boolean v5, v3, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6827
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v3}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 6828
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v3}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 6831
    :cond_4d
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v3}, Landroid/webkit/ViewManager;->startZoom()V

    .line 6835
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v3, :cond_8d

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v3

    if-ne v3, v6, :cond_8d

    .line 6837
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getPluginMode()I

    move-result v3

    if-ne v3, v6, :cond_7a

    .line 6839
    new-instance v0, Landroid/webkit/WebView$PluginUpdateData;

    invoke-direct {v0}, Landroid/webkit/WebView$PluginUpdateData;-><init>()V

    .line 6840
    .local v0, data:Landroid/webkit/WebView$PluginUpdateData;
    iput v5, v0, Landroid/webkit/WebView$PluginUpdateData;->mMode:I

    .line 6841
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->sendPluginUpdate(Landroid/webkit/WebView$PluginUpdateData;)V

    .line 6844
    .end local v0           #data:Landroid/webkit/WebView$PluginUpdateData;
    :cond_7a
    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMaxZoomScale:F
    invoke-static {v4}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)F

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v5}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)F

    move-result v5

    invoke-interface {v3, p1, v4, v5}, Landroid/webkit/OnPinchZoomListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;FF)Z

    .line 6849
    :cond_8d
    return v6
.end method

.method public onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V
    .registers 12
    .parameter "detector"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 6856
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_17

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-eq v2, v8, :cond_17

    .line 6857
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->unregisterTiltListener()V

    .line 6859
    :cond_17
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_89

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-ne v2, v8, :cond_89

    .line 6861
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2, v8}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;Z)Z

    .line 6862
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getCenterX()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mZoomCenterX:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2202(Landroid/webkit/WebView;F)F

    .line 6863
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getCenterY()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mZoomCenterY:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2302(Landroid/webkit/WebView;F)F

    .line 6864
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getScale()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$1102(Landroid/webkit/WebView;F)F

    .line 6866
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6e

    .line 6867
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$1102(Landroid/webkit/WebView;F)F

    .line 6869
    :cond_6e
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMaxZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_89

    .line 6870
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMaxZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$1102(Landroid/webkit/WebView;F)F

    .line 6873
    :cond_89
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 6874
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2, v9}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;Z)Z

    .line 6875
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomCenterX:F
    invoke-static {v4}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$2500(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v3

    #setter for: Landroid/webkit/WebView;->mAnchorX:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2402(Landroid/webkit/WebView;I)I

    .line 6876
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomCenterY:F
    invoke-static {v4}, Landroid/webkit/WebView;->access$2300(Landroid/webkit/WebView;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$2700(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v3

    #setter for: Landroid/webkit/WebView;->mAnchorY:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2602(Landroid/webkit/WebView;I)I

    .line 6879
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {}, Landroid/webkit/WebView;->access$2800()F

    move-result v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_f3

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL

    iget-object v6, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget v6, v6, Landroid/webkit/WebView;->mTextWrapScale:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_17a

    :cond_f3
    move v1, v8

    .line 6884
    .local v1, reflowNow:Z
    :goto_f4
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;)F

    move-result v3

    const/4 v4, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static {v2, v3, v1, v8, v4}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 6886
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    .line 6889
    .end local v1           #reflowNow:Z
    :cond_105
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_126

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z
    invoke-static {v2, v9}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;Z)Z

    move-result v2

    if-eqz v2, :cond_126

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v2

    if-eqz v2, :cond_126

    .line 6893
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 6898
    :cond_126
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    const/16 v3, 0x8

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$3102(Landroid/webkit/WebView;I)I

    .line 6899
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mConfirmMove:Z
    invoke-static {v2, v8}, Landroid/webkit/WebView;->access$3202(Landroid/webkit/WebView;Z)Z

    .line 6900
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchTime:J
    invoke-static {v5}, Landroid/webkit/WebView;->access$3300(Landroid/webkit/WebView;)J

    move-result-wide v5

    #calls: Landroid/webkit/WebView;->startTouch(FFJ)V
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->access$3400(Landroid/webkit/WebView;FFJ)V

    .line 6903
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->endZoom()V

    .line 6907
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_179

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-ne v2, v8, :cond_179

    .line 6909
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2, p1}, Landroid/webkit/OnPinchZoomListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 6910
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->getPluginMode()I

    move-result v2

    if-ne v2, v8, :cond_179

    .line 6912
    new-instance v0, Landroid/webkit/WebView$PluginUpdateData;

    invoke-direct {v0}, Landroid/webkit/WebView$PluginUpdateData;-><init>()V

    .line 6913
    .local v0, data:Landroid/webkit/WebView$PluginUpdateData;
    iput v8, v0, Landroid/webkit/WebView$PluginUpdateData;->mMode:I

    .line 6914
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->sendPluginUpdate(Landroid/webkit/WebView$PluginUpdateData;)V

    .line 6917
    .end local v0           #data:Landroid/webkit/WebView$PluginUpdateData;
    :cond_179
    return-void

    :cond_17a
    move v1, v9

    .line 6879
    goto/16 :goto_f4
.end method
