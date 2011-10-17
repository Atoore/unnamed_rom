.class Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAuthorizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenForPairingCancel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;-><init>(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 338
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "broadcom.android.bluetooth.intent.action.AGENT_CANCEL_USER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 341
    :cond_0
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 342
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->access$600(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    :cond_1
    const v1, 0x7f08068d

    .line 344
    .local v1, errorMsg:I
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->access$700(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    const v3, 0x7f080126

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->showError(Landroid/bluetooth/BluetoothDevice;II)V

    .line 345
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->access$800(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V

    .line 346
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->access$900(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V

    .line 351
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #errorMsg:I
    :cond_2
    :goto_0
    return-void

    .line 349
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;->this$0:Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;->access$900(Lcom/android/settings/bluetooth/BluetoothAuthorizeDialog;)V

    goto :goto_0
.end method
