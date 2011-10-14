.class Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenCaptureAction"
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "ScreenCaptureAction"


# instance fields
.field private final ACTION:Ljava/lang/String;

.field private mHomeKeyPressed:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsSentIntent:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 5
    .parameter

    .prologue
    const-string v2, "com.sec.android.app.screencapture.capture"

    .line 3028
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3023
    const-string v0, "com.sec.android.app.screencapture.capture"

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->ACTION:Ljava/lang/String;

    .line 3030
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.screencapture.capture"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIntent:Landroid/content/Intent;

    .line 3031
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3032
    return-void
.end method


# virtual methods
.method doIninterceptKeyBeforeQueueing(IZZ)I
    .registers 8
    .parameter "keyCode"
    .parameter "isScreenOn"
    .parameter "down"

    .prologue
    const/4 v2, 0x0

    const-string v3, "ScreenCaptureAction"

    .line 3063
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->isHomeKeyPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3065
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    .line 3066
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomeLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3068
    if-eqz p2, :cond_2a

    if-nez p3, :cond_2a

    .line 3069
    const-string v0, "ScreenCaptureAction"

    const-string v0, "interceptKeyBeforeQueueing(), now send intent"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->sendIntent()V

    :cond_2a
    move v0, v2

    .line 3088
    :goto_2b
    return v0

    .line 3078
    :cond_2c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_43

    .line 3079
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->updateHomeKeyPressed(Z)V

    .line 3082
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->isSentIntent()Z

    move-result v0

    if-eqz v0, :cond_43

    if-nez p3, :cond_43

    .line 3083
    const-string v0, "ScreenCaptureAction"

    const-string v0, "interceptKeyBeforeQueueing(), discard KEYCODE_HOME up event."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 3084
    goto :goto_2b

    .line 3088
    :cond_43
    const/4 v0, -0x1

    goto :goto_2b
.end method

.method isHomeKeyPressed()Z
    .registers 4

    .prologue
    .line 3040
    const-string v0, "ScreenCaptureAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHomeKeyPressed(), return value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mHomeKeyPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mHomeKeyPressed:Z

    return v0
.end method

.method isSentIntent()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3053
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIsSentIntent:Z

    if-eqz v0, :cond_9

    .line 3054
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIsSentIntent:Z

    .line 3055
    const/4 v0, 0x1

    .line 3058
    :goto_8
    return v0

    :cond_9
    move v0, v1

    goto :goto_8
.end method

.method sendIntent()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const-string v3, "ScreenCaptureAction"

    .line 3045
    const-string v0, "ScreenCaptureAction"

    const-string v0, "sendIntent() is called"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3047
    const-string v0, "ScreenCaptureAction"

    const-string v0, "******************** Intent[com.sec.android.app.screencapture.capture] is sent. *************************"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIsSentIntent:Z

    .line 3049
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3050
    return-void
.end method

.method updateHomeKeyPressed(Z)V
    .registers 5
    .parameter "pressed"

    .prologue
    .line 3035
    const-string v0, "ScreenCaptureAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHomeKeyPressed(), pressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mHomeKeyPressed:Z

    .line 3037
    return-void
.end method
