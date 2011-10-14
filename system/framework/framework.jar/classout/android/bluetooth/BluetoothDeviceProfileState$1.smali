.class Landroid/bluetooth/BluetoothDeviceProfileState$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0x66

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 103
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 138
    :cond_1c
    :goto_1c
    return-void

    .line 105
    :cond_1d
    const-string v5, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 106
    const-string v5, "android.bluetooth.headset.extra.STATE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 107
    .local v3, newState:I
    const-string v5, "android.bluetooth.headset.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 108
    .local v4, oldState:I
    const-string v5, "android.bluetooth.headset.extra.DISCONNECT_INITIATOR"

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 111
    .local v2, initiator:I
    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I
    invoke-static {v5, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$602(Landroid/bluetooth/BluetoothDeviceProfileState;I)I

    .line 112
    if-nez v3, :cond_47

    if-nez v2, :cond_47

    .line 114
    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 116
    :cond_47
    if-eq v3, v7, :cond_4b

    if-nez v3, :cond_1c

    .line 118
    :cond_4b
    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v5, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_1c

    .line 120
    .end local v2           #initiator:I
    .end local v3           #newState:I
    .end local v4           #oldState:I
    :cond_51
    const-string v5, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 121
    const-string v5, "android.bluetooth.a2dp.extra.SINK_STATE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 122
    .restart local v3       #newState:I
    const-string v5, "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 123
    .restart local v4       #oldState:I
    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpState:I
    invoke-static {v5, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$702(Landroid/bluetooth/BluetoothDeviceProfileState;I)I

    .line 124
    if-eq v4, v7, :cond_6f

    const/4 v5, 0x4

    if-ne v4, v5, :cond_78

    :cond_6f
    if-nez v3, :cond_78

    .line 127
    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 129
    :cond_78
    if-eq v3, v7, :cond_7c

    if-nez v3, :cond_1c

    .line 131
    :cond_7c
    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v5, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_1c

    .line 133
    .end local v3           #newState:I
    .end local v4           #oldState:I
    :cond_82
    const-string v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 136
    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceProfileState$1;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v5, v8}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    goto :goto_1c
.end method
