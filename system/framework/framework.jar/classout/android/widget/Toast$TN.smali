.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TN"
.end annotation


# instance fields
.field final mHide:Ljava/lang/Runnable;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mWM:Landroid/view/WindowManagerImpl;

.field final synthetic this$0:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Landroid/widget/Toast;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 334
    iput-object p1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 318
    new-instance v1, Landroid/widget/Toast$TN$1;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    .line 324
    new-instance v1, Landroid/widget/Toast$TN$2;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$2;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    .line 330
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 337
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 338
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 339
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 340
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 343
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 344
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 345
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 346
    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    return-void
.end method


# virtual methods
.method public handleHide()V
    .registers 3

    .prologue
    .line 397
    iget-object v0, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v0, v0, Landroid/widget/Toast;->mView:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 401
    iget-object v0, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v0, v0, Landroid/widget/Toast;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 404
    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v1, v1, Landroid/widget/Toast;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 407
    :cond_19
    iget-object v0, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Toast;->mView:Landroid/view/View;

    .line 409
    :cond_1e
    return-void
.end method

.method public handleShow()V
    .registers 5

    .prologue
    const/high16 v3, 0x3f80

    .line 368
    iget-object v1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v1, v1, Landroid/widget/Toast;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v2, v2, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eq v1, v2, :cond_76

    .line 370
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 371
    iget-object v1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v2, v2, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    iput-object v2, v1, Landroid/widget/Toast;->mView:Landroid/view/View;

    .line 372
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    .line 373
    iget-object v1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget v0, v1, Landroid/widget/Toast;->mGravity:I

    .line 374
    .local v0, gravity:I
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 375
    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2e

    .line 376
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 378
    :cond_2e
    and-int/lit8 v1, v0, 0x70

    const/16 v2, 0x70

    if-ne v1, v2, :cond_38

    .line 379
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 381
    :cond_38
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget v2, v2, Landroid/widget/Toast;->mX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 382
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget v2, v2, Landroid/widget/Toast;->mY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 383
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget v2, v2, Landroid/widget/Toast;->mVerticalMargin:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 384
    iget-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget v2, v2, Landroid/widget/Toast;->mHorizontalMargin:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 385
    iget-object v1, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v1, v1, Landroid/widget/Toast;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_6b

    .line 388
    iget-object v1, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v2, v2, Landroid/widget/Toast;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 391
    :cond_6b
    iget-object v1, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManagerImpl;

    iget-object v2, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v2, v2, Landroid/widget/Toast;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    .end local v0           #gravity:I
    :cond_76
    return-void
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 362
    iget-object v0, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v0, v0, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 354
    iget-object v0, p0, Landroid/widget/Toast$TN;->this$0:Landroid/widget/Toast;

    iget-object v0, v0, Landroid/widget/Toast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    return-void
.end method
