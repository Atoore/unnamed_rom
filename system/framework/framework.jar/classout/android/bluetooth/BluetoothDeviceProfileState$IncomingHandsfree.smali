.class Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
.super Lcom/android/internal/util/HierarchicalState;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandsfree"
.end annotation


# instance fields
.field private mCommand:I

.field private mStatus:Z

.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .registers 3
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 410
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method protected enter()V
    .registers 4

    .prologue
    const-string v2, "BluetoothDeviceProfileState"

    .line 416
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entering IncomingHandsfree state with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    .line 418
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_50

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_50

    .line 420
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: IncomingHandsfree state with command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_50
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mStatus:Z

    .line 423
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->mStatus:Z

    if-nez v0, :cond_71

    .line 424
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 425
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothService;->sendProfileStateMessage(II)V

    .line 428
    :cond_71
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .registers 5
    .parameter "message"

    .prologue
    .line 432
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IncomingHandsfree State -> Processing Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1600(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 433
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_5a

    .line 477
    const/4 v0, 0x0

    .line 479
    :goto_20
    return v0

    .line 435
    :sswitch_21
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    .line 479
    :goto_26
    :sswitch_26
    const/4 v0, 0x1

    goto :goto_20

    .line 439
    :sswitch_28
    const-string v0, "BluetoothDeviceProfileState"

    const-string v1, "Error: Incoming connection with a pending incoming connection"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 443
    :sswitch_30
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4900(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_26

    .line 446
    :sswitch_36
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_26

    .line 453
    :sswitch_3c
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5100(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_26

    .line 460
    :sswitch_42
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5200(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_26

    .line 471
    :sswitch_48
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_26

    .line 474
    :sswitch_4e
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5400(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/HierarchicalState;)V

    goto :goto_26

    .line 433
    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_21
        0x2 -> :sswitch_28
        0x3 -> :sswitch_36
        0x4 -> :sswitch_30
        0x5 -> :sswitch_3c
        0x6 -> :sswitch_26
        0x7 -> :sswitch_42
        0x8 -> :sswitch_26
        0x9 -> :sswitch_48
        0x64 -> :sswitch_48
        0x65 -> :sswitch_48
        0x66 -> :sswitch_4e
        0x67 -> :sswitch_48
    .end sparse-switch
.end method
