.class Landroid/server/BluetoothService$1;
.super Landroid/os/Handler;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothService;)V
    .registers 2
    .parameter

    .prologue
    .line 899
    iput-object p1, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const-wide/16 v9, 0x1f4

    const/4 v8, -0x1

    const/4 v6, 0x1

    const-string v7, "0"

    const-string v5, "BluetoothService"

    .line 902
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_1e0

    .line 1054
    :cond_d
    :goto_d
    :pswitch_d
    return-void

    .line 904
    :pswitch_e
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #calls: Landroid/server/BluetoothService;->isEnabledInternal()Z
    invoke-static {v3}, Landroid/server/BluetoothService;->access$000(Landroid/server/BluetoothService;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 914
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_1f6

    goto :goto_d

    .line 916
    :pswitch_1c
    const-string v3, "BluetoothService"

    const-string v3, "Registering hfag record"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string v3, "hfag"

    invoke-static {v3}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 918
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v6, v5, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    .line 922
    :pswitch_3d
    const-string v3, "BluetoothService"

    const-string v3, "Registering hsag record"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const-string v3, "hsag"

    invoke-static {v3}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 924
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v6, v5, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    .line 928
    :pswitch_5e
    const-string v3, "BluetoothService"

    const-string v3, "Registering opush record"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const-string/jumbo v3, "opush"

    invoke-static {v3}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 930
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v6, v5, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    .line 934
    :pswitch_80
    const-string v3, "BluetoothService"

    const-string v3, "Registering pbap record"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const-string/jumbo v3, "pbap"

    invoke-static {v3}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    goto :goto_d

    .line 944
    :pswitch_8e
    const-string v3, "BluetoothService"

    const-string v3, "Received MESSAGE_FINISH_DISABLE"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mDisableSaveSetting:Z
    invoke-static {v4}, Landroid/server/BluetoothService;->access$200(Landroid/server/BluetoothService;)Z

    move-result v4

    #calls: Landroid/server/BluetoothService;->finishDisable(Z)V
    invoke-static {v3, v4}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;Z)V

    goto/16 :goto_d

    .line 949
    :pswitch_a2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 950
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 951
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->sendUuidIntent(Ljava/lang/String;)V

    .line 952
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->makeServiceChannelCallbacks(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 967
    .end local v0           #address:Ljava/lang/String;
    :pswitch_b4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 968
    .restart local v0       #address:Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 969
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->createBond(Ljava/lang/String;)Z

    goto/16 :goto_d

    .line 976
    .end local v0           #address:Ljava/lang/String;
    :pswitch_c1
    const-string v3, "BluetoothService"

    const-string v3, "Received BT_BOOTUP message"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const-string/jumbo v3, "service.brcm.bt.soft_onoff"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 980
    .local v2, soft_onoff_prop:Ljava/lang/String;
    if-eqz v2, :cond_d9

    const-string v3, "0"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 981
    :cond_d9
    const-string/jumbo v3, "service.brcm.bt.hcid_active"

    const-string v4, "0"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string/jumbo v3, "service.brcm.bt.srv_active"

    const-string v4, "0"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const-string/jumbo v3, "service.brcm.bt.btld"

    const-string v4, "0"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string/jumbo v3, "service.brcm.bt.activation"

    const-string v4, "0"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :cond_f9
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1002
    .local v1, bluetoothOn:I
    if-lez v1, :cond_d

    .line 1003
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v3, v6}, Landroid/server/BluetoothService;->enable(Z)Z

    goto/16 :goto_d

    .line 1016
    .end local v1           #bluetoothOn:I
    .end local v2           #soft_onoff_prop:Ljava/lang/String;
    :pswitch_113
    const-string v3, "BluetoothService"

    const-string v3, "Received AVRCP_PASS_THROUGH_TIMEOUT message"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const-string/jumbo v3, "service.brcm.bt.avrcp_pass_thru"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1020
    :pswitch_124
    const-string v3, "BluetoothService"

    const-string v3, "Oops: Received MESSAGE_PROFILE_DISCONNECT_TIMEOUT"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForHeadsetDisconnected:Z
    invoke-static {v3}, Landroid/server/BluetoothService;->access$500(Landroid/server/BluetoothService;)Z

    move-result v3

    if-eqz v3, :cond_13a

    .line 1022
    const-string v3, "BluetoothService"

    const-string v3, "Oops: Force to disable BT even though HSP/HFP is yet to be disconnected"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_13a
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForA2dpDisconnected:Z
    invoke-static {v3}, Landroid/server/BluetoothService;->access$600(Landroid/server/BluetoothService;)Z

    move-result v3

    if-eqz v3, :cond_149

    .line 1025
    const-string v3, "BluetoothService"

    const-string v3, "Oops: Force to disable BT even though A2DP is yet to be disconnected"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :cond_149
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForHidDisconnected:Z
    invoke-static {v3}, Landroid/server/BluetoothService;->access$700(Landroid/server/BluetoothService;)Z

    move-result v3

    if-eqz v3, :cond_158

    .line 1028
    const-string v3, "BluetoothService"

    const-string v3, "Oops: Force to disable BT even though HID is yet to be disconnected"

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_158
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mWaitingForAclDisconnected:Z
    invoke-static {v3}, Landroid/server/BluetoothService;->access$800(Landroid/server/BluetoothService;)Z

    move-result v3

    if-eqz v3, :cond_184

    .line 1031
    const-string v3, "BluetoothService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Oops: mAclLinkCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mAclLinkCount:I
    invoke-static {v4}, Landroid/server/BluetoothService;->access$900(Landroid/server/BluetoothService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", for BT down"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_184
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_190

    move v4, v6

    :goto_18b
    #calls: Landroid/server/BluetoothService;->finishDisable(Z)V
    invoke-static {v3, v4}, Landroid/server/BluetoothService;->access$300(Landroid/server/BluetoothService;Z)V

    goto/16 :goto_d

    :cond_190
    const/4 v4, 0x0

    goto :goto_18b

    .line 1039
    :pswitch_192
    invoke-static {}, Landroid/server/BluetoothService;->access$1000()I

    move-result v3

    if-nez v3, :cond_1bf

    .line 1040
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10402e3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1044
    :cond_1b2
    :goto_1b2
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_d

    .line 1041
    :cond_1bf
    invoke-static {}, Landroid/server/BluetoothService;->access$1000()I

    move-result v3

    if-ne v3, v6, :cond_1b2

    .line 1042
    iget-object v3, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/server/BluetoothService$1;->this$0:Landroid/server/BluetoothService;

    #getter for: Landroid/server/BluetoothService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10402e4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1b2

    .line 902
    :pswitch_data_1e0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_8e
        :pswitch_a2
        :pswitch_d
        :pswitch_b4
        :pswitch_c1
        :pswitch_113
        :pswitch_124
        :pswitch_192
    .end packed-switch

    .line 914
    :pswitch_data_1f6
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_3d
        :pswitch_5e
        :pswitch_80
    .end packed-switch
.end method
