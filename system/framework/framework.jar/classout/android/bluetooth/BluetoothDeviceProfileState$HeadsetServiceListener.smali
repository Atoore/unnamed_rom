.class Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;
.super Ljava/lang/Object;
.source "BluetoothDeviceProfileState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothHeadset$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .registers 4
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$802(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 187
    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .registers 4

    .prologue
    .line 189
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v0

    .line 190
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x1

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetServiceConnected:Z
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1002(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 191
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public onServiceDisconnected()V
    .registers 4

    .prologue
    .line 194
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    monitor-enter v0

    .line 195
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$HeadsetServiceListener;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v2, 0x0

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetServiceConnected:Z
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1002(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 196
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
