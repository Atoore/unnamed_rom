.class Landroid/mtp/MtpClient$1;
.super Landroid/content/BroadcastReceiver;
.source "MtpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MtpClient;


# direct methods
.method constructor <init>(Landroid/mtp/MtpClient;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Landroid/mtp/MtpClient$1;->this$0:Landroid/mtp/MtpClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 51
    const-string v5, "device_name"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, deviceName:Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeviceName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    iget-object v5, p0, Landroid/mtp/MtpClient$1;->this$0:Landroid/mtp/MtpClient;

    #getter for: Landroid/mtp/MtpClient;->mDeviceList:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/mtp/MtpClient;->access$000(Landroid/mtp/MtpClient;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 56
    :try_start_41
    iget-object v6, p0, Landroid/mtp/MtpClient$1;->this$0:Landroid/mtp/MtpClient;

    #calls: Landroid/mtp/MtpClient;->getDeviceLocked(Ljava/lang/String;)Landroid/mtp/MtpDevice;
    invoke-static {v6, v0}, Landroid/mtp/MtpClient;->access$100(Landroid/mtp/MtpClient;Ljava/lang/String;)Landroid/mtp/MtpDevice;

    move-result-object v3

    .line 58
    .local v3, mtpDevice:Landroid/mtp/MtpDevice;
    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 59
    if-nez v3, :cond_63

    .line 60
    const-string v6, "device"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    .line 62
    .local v4, usbDevice:Landroid/hardware/usb/UsbDevice;
    iget-object v6, p0, Landroid/mtp/MtpClient$1;->this$0:Landroid/mtp/MtpClient;

    #calls: Landroid/mtp/MtpClient;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;
    invoke-static {v6, v4}, Landroid/mtp/MtpClient;->access$200(Landroid/mtp/MtpClient;Landroid/hardware/usb/UsbDevice;)Landroid/mtp/MtpDevice;

    move-result-object v3

    .line 64
    .end local v4           #usbDevice:Landroid/hardware/usb/UsbDevice;
    :cond_63
    if-eqz v3, :cond_b0

    .line 65
    iget-object v6, p0, Landroid/mtp/MtpClient$1;->this$0:Landroid/mtp/MtpClient;

    #getter for: Landroid/mtp/MtpClient;->mDeviceList:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/mtp/MtpClient;->access$000(Landroid/mtp/MtpClient;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v6, p0, Landroid/mtp/MtpClient$1;->this$0:Landroid/mtp/MtpClient;

    #getter for: Landroid/mtp/MtpClient;->mListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/mtp/MtpClient;->access$300(Landroid/mtp/MtpClient;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_78
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpClient$Listener;

    .line 67
    .local v2, listener:Landroid/mtp/MtpClient$Listener;
    invoke-interface {v2, v3}, Landroid/mtp/MtpClient$Listener;->deviceAdded(Landroid/mtp/MtpDevice;)V

    goto :goto_78

    .line 76
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Landroid/mtp/MtpClient$Listener;
    .end local v3           #mtpDevice:Landroid/mtp/MtpDevice;
    :catchall_88
    move-exception v6

    monitor-exit v5
    :try_end_8a
    .catchall {:try_start_41 .. :try_end_8a} :catchall_88

    throw v6

    .line 70
    .restart local v3       #mtpDevice:Landroid/mtp/MtpDevice;
    :cond_8b
    if-eqz v3, :cond_b0

    .line 71
    :try_start_8d
    iget-object v6, p0, Landroid/mtp/MtpClient$1;->this$0:Landroid/mtp/MtpClient;

    #getter for: Landroid/mtp/MtpClient;->mDeviceList:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/mtp/MtpClient;->access$000(Landroid/mtp/MtpClient;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 72
    iget-object v6, p0, Landroid/mtp/MtpClient$1;->this$0:Landroid/mtp/MtpClient;

    #getter for: Landroid/mtp/MtpClient;->mListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/mtp/MtpClient;->access$300(Landroid/mtp/MtpClient;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpClient$Listener;

    .line 73
    .restart local v2       #listener:Landroid/mtp/MtpClient$Listener;
    invoke-interface {v2, v3}, Landroid/mtp/MtpClient$Listener;->deviceRemoved(Landroid/mtp/MtpDevice;)V

    goto :goto_a0

    .line 76
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Landroid/mtp/MtpClient$Listener;
    :cond_b0
    monitor-exit v5
    :try_end_b1
    .catchall {:try_start_8d .. :try_end_b1} :catchall_88

    .line 77
    return-void
.end method
