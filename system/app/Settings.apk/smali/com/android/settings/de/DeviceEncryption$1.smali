.class Lcom/android/settings/de/DeviceEncryption$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceEncryption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/de/DeviceEncryption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/de/DeviceEncryption;


# direct methods
.method constructor <init>(Lcom/android/settings/de/DeviceEncryption;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings/de/DeviceEncryption$1;->this$0:Lcom/android/settings/de/DeviceEncryption;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption$1;->this$0:Lcom/android/settings/de/DeviceEncryption;

    invoke-static {v0}, Lcom/android/settings/de/DeviceEncryption;->access$000(Lcom/android/settings/de/DeviceEncryption;)V

    .line 109
    :cond_0
    return-void
.end method
