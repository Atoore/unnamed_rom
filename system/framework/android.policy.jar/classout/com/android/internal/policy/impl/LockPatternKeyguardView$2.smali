.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;
.super Landroid/content/BroadcastReceiver;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 2
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const-string v4, "LockPatternKeyguardView"

    .line 766
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.DEVICE_LOCKSCREEN_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 768
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "[MaxInactivityTime]startTimer: onFinish is called"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->lockScreenShown:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$802(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 770
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isInactivityTimeoutExpired:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$602(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 771
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "[MaxInactivityTime]startTimer: isInactivityTimeoutExpired is set to false"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->unLockscreen_should_shown:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2302(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 774
    :cond_2d
    return-void
.end method
