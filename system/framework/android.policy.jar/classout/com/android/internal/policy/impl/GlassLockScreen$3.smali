.class Lcom/android/internal/policy/impl/GlassLockScreen$3;
.super Ljava/lang/Object;
.source "GlassLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlassLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const-string v1, "GlassLockScreen"

    .line 374
    const-string v0, "GlassLockScreen"

    const-string v0, "mStartLockAnimation()"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$100(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$100(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreen;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlassLockScreen;->access$200(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 379
    :goto_20
    return-void

    .line 378
    :cond_21
    const-string v0, "GlassLockScreen"

    const-string v0, "mStartLockAnimation : mMainLayout is null."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method
