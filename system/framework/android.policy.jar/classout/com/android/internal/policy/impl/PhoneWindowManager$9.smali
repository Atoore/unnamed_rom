.class Lcom/android/internal/policy/impl/PhoneWindowManager$9;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2
    .parameter

    .prologue
    .line 2399
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2401
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2402
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    .line 2407
    :try_start_17
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDockMode:I

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->setCurrentDockState(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_22} :catch_43

    .line 2419
    :goto_22
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateRotation(I)V

    .line 2420
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 2421
    return-void

    .line 2413
    :cond_2e
    :try_start_2e
    const-string v1, "uimode"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    .line 2415
    .local v0, uiModeService:Landroid/app/IUiModeManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$9;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v2

    iput v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUiMode:I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_40} :catch_41

    goto :goto_22

    .line 2416
    .end local v0           #uiModeService:Landroid/app/IUiModeManager;
    :catch_41
    move-exception v1

    goto :goto_22

    .line 2408
    :catch_43
    move-exception v1

    goto :goto_22
.end method
