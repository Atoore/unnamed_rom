.class Landroid/bluetooth/BluetoothHeadset$1;
.super Ljava/lang/Object;
.source "BluetoothHeadset.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHeadset;)V
    .registers 2
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 601
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;

    move-result-object v1

    #setter for: Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->access$002(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;

    .line 602
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #getter for: Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$100(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 603
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #getter for: Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$100(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/BluetoothHeadset$ServiceListener;->onServiceConnected()V

    .line 605
    :cond_1a
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 608
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    #setter for: Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->access$002(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;

    .line 609
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #getter for: Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$100(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 610
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$1;->this$0:Landroid/bluetooth/BluetoothHeadset;

    #getter for: Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;
    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->access$100(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/BluetoothHeadset$ServiceListener;->onServiceDisconnected()V

    .line 612
    :cond_17
    return-void
.end method
