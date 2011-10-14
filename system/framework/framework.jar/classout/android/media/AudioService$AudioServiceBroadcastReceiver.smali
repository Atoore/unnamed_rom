.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 2233
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2233
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 32
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2236
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 2239
    .local v4, action:Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, spkIndex:I
    const/4 v12, 0x0

    .line 2241
    .local v12, hphIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v27, v0

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static/range {v27 .. v27}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)[I

    move-result-object v27

    const/16 v28, 0x3

    aget v27, v27, v28

    aget-object v24, v26, v27

    .line 2242
    .local v24, streamStateForSpk:Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v27, v0

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static/range {v27 .. v27}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)[I

    move-result-object v27

    const/16 v28, 0xc

    aget v27, v27, v28

    aget-object v23, v26, v27

    .line 2243
    .local v23, streamStateForHph:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static/range {v24 .. v24}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v26

    if-eqz v26, :cond_d9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static/range {v24 .. v24}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v26

    move/from16 v21, v26

    .line 2244
    :goto_47
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static/range {v23 .. v23}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v26

    if-eqz v26, :cond_e1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static/range {v23 .. v23}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v26

    move/from16 v12, v26

    .line 2248
    :goto_53
    const-string v26, "action=%s"

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    const-string v26, "android.intent.action.DOCK_EVENT"

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_ed

    .line 2251
    const-string v26, "android.intent.extra.DOCK_STATE"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 2254
    .local v11, dockState:I
    packed-switch v11, :pswitch_data_7fe

    .line 2263
    const/4 v8, 0x0

    .line 2265
    .local v8, config:I
    :goto_78
    const/16 v26, 0x3

    move/from16 v0, v26

    move v1, v8

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 2570
    .end local v8           #config:I
    .end local v11           #dockState:I
    .end local p1
    :cond_80
    :goto_80
    const-wide/16 v26, 0x64

    invoke-static/range {v26 .. v27}, Landroid/os/SystemClock;->sleep(J)V

    .line 2571
    const-string v26, "audioParam;curDevice"

    invoke-static/range {v26 .. v26}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2578
    .local v15, isMusicHPH:Ljava/lang/String;
    const-string v26, "HPH"

    move-object v0, v15

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7c4

    .line 2579
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    move v3, v12

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;III)V

    .line 2580
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    const/16 v27, 0x9

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    move v3, v12

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;III)V

    .line 2586
    :goto_ba
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/media/AudioService;->isRadioSpeakerOn()Z

    move-result v26

    if-eqz v26, :cond_7ea

    .line 2587
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    move-object/from16 v0, v26

    move/from16 v1, v27

    move v2, v12

    move/from16 v3, v21

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;III)V

    .line 2593
    :goto_d8
    return-void

    .line 2243
    .end local v15           #isMusicHPH:Ljava/lang/String;
    .restart local p1
    :cond_d9
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static/range {v24 .. v24}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v26

    move/from16 v21, v26

    goto/16 :goto_47

    .line 2244
    :cond_e1
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static/range {v23 .. v23}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v26

    move/from16 v12, v26

    goto/16 :goto_53

    .line 2256
    .restart local v11       #dockState:I
    :pswitch_e9
    const/4 v8, 0x7

    .line 2257
    .restart local v8       #config:I
    goto :goto_78

    .line 2259
    .end local v8           #config:I
    :pswitch_eb
    const/4 v8, 0x6

    .line 2260
    .restart local v8       #config:I
    goto :goto_78

    .line 2266
    .end local v8           #config:I
    .end local v11           #dockState:I
    :cond_ed
    const-string v26, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1ee

    .line 2267
    const-string v26, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 2269
    .local v22, state:I
    const-string v26, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 2270
    .local v7, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 2271
    .local v5, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    const/16 v27, 0x80

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_177

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    const/16 v27, 0x80

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_177

    const/16 v26, 0x1

    move/from16 v14, v26

    .line 2274
    .local v14, isConnected:Z
    :goto_14f
    if-eqz v14, :cond_18a

    const/16 v26, 0x2

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_18a

    const/16 v26, 0x4

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_18a

    .line 2276
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v26

    if-eqz v26, :cond_17c

    .line 2277
    if-nez v22, :cond_80

    .line 2281
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v5

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2271
    .end local v14           #isConnected:Z
    :cond_177
    const/16 v26, 0x0

    move/from16 v14, v26

    goto :goto_14f

    .line 2285
    .restart local v14       #isConnected:Z
    :cond_17c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v5

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2287
    :cond_18a
    if-nez v14, :cond_80

    const/16 v26, 0x2

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_19c

    const/16 v26, 0x4

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_80

    .line 2290
    :cond_19c
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v26

    if-eqz v26, :cond_1c5

    .line 2292
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #calls: Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)V

    .line 2293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v5

    #setter for: Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$5002(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;

    .line 2302
    :cond_1b7
    :goto_1b7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v5

    #calls: Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_80

    .line 2297
    :cond_1c5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #calls: Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$5100(Landroid/media/AudioService;)Z

    move-result v26

    if-eqz v26, :cond_1b7

    .line 2298
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #calls: Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)V

    .line 2299
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v27, v0

    #getter for: Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)Ljava/lang/String;

    move-result-object v27

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static/range {v26 .. v27}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_1b7

    .line 2304
    .end local v5           #address:Ljava/lang/String;
    .end local v7           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v14           #isConnected:Z
    .end local v22           #state:I
    .restart local p1
    :cond_1ee
    const-string v26, "android.bluetooth.headset.action.STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2dd

    .line 2305
    const-string v26, "android.bluetooth.headset.extra.STATE"

    const/16 v27, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 2307
    .restart local v22       #state:I
    const/16 v10, 0x10

    .line 2308
    .local v10, device:I
    const-string v26, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 2309
    .restart local v7       #btDevice:Landroid/bluetooth/BluetoothDevice;
    const/4 v5, 0x0

    .line 2310
    .restart local v5       #address:Ljava/lang/String;
    if-eqz v7, :cond_229

    .line 2311
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 2312
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v6

    .line 2313
    .local v6, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v6, :cond_229

    .line 2314
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v26

    sparse-switch v26, :sswitch_data_806

    .line 2326
    .end local v6           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_229
    :goto_229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_29e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_29e

    const/16 v26, 0x1

    move/from16 v14, v26

    .line 2329
    .restart local v14       #isConnected:Z
    :goto_25e
    if-eqz v14, :cond_2a3

    const/16 v26, 0x2

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_2a3

    .line 2330
    const/16 v26, 0x0

    move v0, v10

    move/from16 v1, v26

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2334
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static/range {v26 .. v27}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    .line 2335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/media/AudioService;->clearAllScoClients()V

    goto/16 :goto_80

    .line 2317
    .end local v14           #isConnected:Z
    .restart local v6       #btClass:Landroid/bluetooth/BluetoothClass;
    .restart local p1
    :sswitch_298
    const/16 v10, 0x20

    .line 2318
    goto :goto_229

    .line 2320
    :sswitch_29b
    const/16 v10, 0x40

    goto :goto_229

    .line 2326
    .end local v6           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local p1
    :cond_29e
    const/16 v26, 0x0

    move/from16 v14, v26

    goto :goto_25e

    .line 2336
    .restart local v14       #isConnected:Z
    :cond_2a3
    if-nez v14, :cond_80

    const/16 v26, 0x2

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_80

    .line 2337
    const/16 v26, 0x1

    move v0, v10

    move/from16 v1, v26

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2340
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    new-instance v27, Ljava/lang/Integer;

    move-object/from16 v0, v27

    move v1, v10

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2341
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static/range {v26 .. v27}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    goto/16 :goto_80

    .line 2343
    .end local v5           #address:Ljava/lang/String;
    .end local v7           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v10           #device:I
    .end local v14           #isConnected:Z
    .end local v22           #state:I
    .restart local p1
    :cond_2dd
    const-string v26, "android.intent.action.HEADSET_PLUG"

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_418

    .line 2344
    const-string/jumbo v26, "state"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 2345
    .restart local v22       #state:I
    const-string/jumbo v26, "microphone"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2349
    .local v16, microphone:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mMediaServerOk:Z
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Z

    move-result v26

    if-eqz v26, :cond_354

    .line 2350
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mIsEarProtectLimitOn:Z
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$5300(Landroid/media/AudioService;)Z

    move-result v26

    if-eqz v26, :cond_354

    .line 2352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    const/16 v27, 0xc

    invoke-virtual/range {v26 .. v27}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v18

    .line 2353
    .local v18, musicLev:I
    const/16 v9, 0xa

    .line 2355
    .local v9, defaultMusicLev:I
    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_354

    .line 2356
    move/from16 v0, v18

    move v1, v9

    if-le v0, v1, :cond_354

    .line 2357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    const/16 v27, 0xc

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move v2, v9

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioService;->setStreamVolume(III)V

    .line 2358
    const-string v26, "AudioService"

    const-string v27, "HEADSET PLUG IN : set default volume "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    .end local v9           #defaultMusicLev:I
    .end local v18           #musicLev:I
    :cond_354
    if-eqz v16, :cond_3b7

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    const/16 v27, 0x4

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 2368
    .restart local v14       #isConnected:Z
    if-nez v22, :cond_38c

    if-eqz v14, :cond_38c

    .line 2369
    const/16 v26, 0x4

    const/16 v27, 0x0

    const-string v28, ""

    invoke-static/range {v26 .. v28}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    const/16 v27, 0x4

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_80

    .line 2373
    :cond_38c
    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_80

    if-nez v14, :cond_80

    .line 2374
    const/16 v26, 0x4

    const/16 v27, 0x1

    const-string v28, ""

    invoke-static/range {v26 .. v28}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2377
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    new-instance v27, Ljava/lang/Integer;

    const/16 v28, 0x4

    invoke-direct/range {v27 .. v28}, Ljava/lang/Integer;-><init>(I)V

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_80

    .line 2380
    .end local v14           #isConnected:Z
    :cond_3b7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    const/16 v27, 0x8

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 2381
    .restart local v14       #isConnected:Z
    if-nez v22, :cond_3ed

    if-eqz v14, :cond_3ed

    .line 2382
    const/16 v26, 0x8

    const/16 v27, 0x0

    const-string v28, ""

    invoke-static/range {v26 .. v28}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    const/16 v27, 0x8

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_80

    .line 2386
    :cond_3ed
    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_80

    if-nez v14, :cond_80

    .line 2387
    const/16 v26, 0x8

    const/16 v27, 0x1

    const-string v28, ""

    invoke-static/range {v26 .. v28}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2390
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    new-instance v27, Ljava/lang/Integer;

    const/16 v28, 0x8

    invoke-direct/range {v27 .. v28}, Ljava/lang/Integer;-><init>(I)V

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_80

    .line 2394
    .end local v14           #isConnected:Z
    .end local v16           #microphone:I
    .end local v22           #state:I
    :cond_418
    const-string v26, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_48c

    .line 2395
    const-string v26, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/16 v27, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 2397
    .restart local v22       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v26

    monitor-enter v26

    .line 2398
    :try_start_43c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v27, v0

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static/range {v27 .. v27}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_480

    .line 2399
    packed-switch v22, :pswitch_data_814

    .line 2407
    const/16 v22, -0x1

    .line 2410
    :goto_451
    const/16 v27, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_480

    .line 2411
    new-instance v19, Landroid/content/Intent;

    const-string v27, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2412
    .local v19, newIntent:Landroid/content/Intent;
    const-string v27, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v27, v0

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Landroid/media/AudioService;->access$3500(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2416
    .end local v19           #newIntent:Landroid/content/Intent;
    :cond_480
    monitor-exit v26

    goto/16 :goto_80

    :catchall_483
    move-exception v27

    monitor-exit v26
    :try_end_485
    .catchall {:try_start_43c .. :try_end_485} :catchall_483

    throw v27

    .line 2401
    :pswitch_486
    const/16 v22, 0x1

    .line 2402
    goto :goto_451

    .line 2404
    :pswitch_489
    const/16 v22, 0x0

    .line 2405
    goto :goto_451

    .line 2418
    .end local v22           #state:I
    :cond_48c
    const-string v26, "android.intent.action.HDMI_PLUG"

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_51c

    .line 2419
    const-string/jumbo v26, "state"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 2421
    .restart local v22       #state:I
    const-string v26, "AudioService"

    const-string v27, "ACTION_HDMI_PLUG receive !!!  : "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    const/16 v27, 0x2000

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 2424
    .restart local v14       #isConnected:Z
    if-nez v22, :cond_4ea

    if-eqz v14, :cond_4ea

    .line 2425
    const-string v26, "AudioService"

    const-string v27, "ACTION_HDMI_PLUG - disconnected "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    const/16 v26, 0x2000

    const/16 v27, 0x0

    const-string v28, ""

    invoke-static/range {v26 .. v28}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2429
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    const/16 v27, 0x2000

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_80

    .line 2430
    :cond_4ea
    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_80

    if-nez v14, :cond_80

    .line 2431
    const-string v26, "AudioService"

    const-string v27, "ACTION_HDMI_PLUG - connected "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    const/16 v26, 0x2000

    const/16 v27, 0x1

    const-string v28, ""

    invoke-static/range {v26 .. v28}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    new-instance v27, Ljava/lang/Integer;

    const/16 v28, 0x2000

    invoke-direct/range {v27 .. v28}, Ljava/lang/Integer;-><init>(I)V

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_80

    .line 2438
    .end local v14           #isConnected:Z
    .end local v22           #state:I
    :cond_51c
    const-string v26, "HDMI_CONNECTED"

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_565

    .line 2439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    const/16 v27, 0x2000

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 2440
    .restart local v14       #isConnected:Z
    if-nez v14, :cond_80

    .line 2441
    const-string v26, "AudioService"

    const-string v27, "HDMI CONNECTED"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    const/16 v26, 0x2000

    const/16 v27, 0x1

    const-string v28, ""

    invoke-static/range {v26 .. v28}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2444
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    new-instance v27, Ljava/lang/Integer;

    const/16 v28, 0x2000

    invoke-direct/range {v27 .. v28}, Ljava/lang/Integer;-><init>(I)V

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_80

    .line 2447
    .end local v14           #isConnected:Z
    :cond_565
    const-string v26, "HDMI_DISCONNECTED"

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5ab

    .line 2448
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    const/16 v27, 0x2000

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 2449
    .restart local v14       #isConnected:Z
    if-eqz v14, :cond_80

    .line 2450
    const-string v26, "AudioService"

    const-string v27, "HDMI DISCONNECTED"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    const/16 v26, 0x2000

    const/16 v27, 0x0

    const-string v28, ""

    invoke-static/range {v26 .. v28}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2453
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    const/16 v27, 0x2000

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_80

    .line 2456
    .end local v14           #isConnected:Z
    :cond_5ab
    const-string v26, "android.intent.action.TVOUT_PLUG"

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_642

    .line 2457
    const-string/jumbo v26, "state"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 2458
    .restart local v22       #state:I
    const-string v26, "AudioService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "TVOUT_PLUG evt state : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    const/16 v27, 0x800

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 2461
    .restart local v14       #isConnected:Z
    if-nez v22, :cond_617

    if-eqz v14, :cond_617

    .line 2462
    const/16 v26, 0x800

    const/16 v27, 0x0

    const-string v28, ""

    invoke-static/range {v26 .. v28}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    const/16 v27, 0x800

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_80

    .line 2466
    :cond_617
    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_80

    if-nez v14, :cond_80

    .line 2467
    const/16 v26, 0x800

    const/16 v27, 0x1

    const-string v28, ""

    invoke-static/range {v26 .. v28}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2470
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    new-instance v27, Ljava/lang/Integer;

    const/16 v28, 0x800

    invoke-direct/range {v27 .. v28}, Ljava/lang/Integer;-><init>(I)V

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_80

    .line 2473
    .end local v14           #isConnected:Z
    .end local v22           #state:I
    :cond_642
    const-string v26, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6d9

    .line 2474
    const-string/jumbo v26, "state"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 2475
    .restart local v22       #state:I
    const-string v26, "AudioService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "EXTRA_DOCK_SPEAKER evt state : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    const/16 v27, 0x1000

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 2478
    .restart local v14       #isConnected:Z
    if-nez v22, :cond_6ae

    if-eqz v14, :cond_6ae

    .line 2479
    const/16 v26, 0x1000

    const/16 v27, 0x0

    const-string v28, ""

    invoke-static/range {v26 .. v28}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2482
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    const/16 v27, 0x1000

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_80

    .line 2483
    :cond_6ae
    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_80

    if-nez v14, :cond_80

    .line 2484
    const/16 v26, 0x1000

    const/16 v27, 0x1

    const-string v28, ""

    invoke-static/range {v26 .. v28}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2487
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$3800(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v26

    new-instance v27, Ljava/lang/Integer;

    const/16 v28, 0x1000

    invoke-direct/range {v27 .. v28}, Ljava/lang/Integer;-><init>(I)V

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_80

    .line 2492
    .end local v14           #isConnected:Z
    .end local v22           #state:I
    :cond_6d9
    const-string v26, "android.intent.action.BOOT_COMPLETED"

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_72b

    .line 2493
    const-string/jumbo v26, "ro.csc.sales_code"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2494
    .local v20, salescode:Ljava/lang/String;
    if-nez v20, :cond_6fd

    .line 2495
    const-string v26, "AudioService"

    const-string v27, "can not get salescode"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    :cond_6f4
    :goto_6f4
    const-string v26, "AudioService"

    const-string v27, "android.intent.action.BOOT_COMPLETED: BOOT_COMPLETED"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_80

    .line 2497
    :cond_6fd
    const/4 v13, 0x0

    .local v13, i:I
    :goto_6fe
    invoke-static {}, Landroid/media/AudioService;->access$5400()[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move v0, v13

    move/from16 v1, v26

    if-ge v0, v1, :cond_6f4

    .line 2498
    invoke-static {}, Landroid/media/AudioService;->access$5400()[Ljava/lang/String;

    move-result-object v26

    aget-object v26, v26, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_728

    .line 2500
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    #setter for: Landroid/media/AudioService;->mIsEarProtectLimitOn:Z
    invoke-static/range {v26 .. v27}, Landroid/media/AudioService;->access$5302(Landroid/media/AudioService;Z)Z

    goto :goto_6f4

    .line 2497
    :cond_728
    add-int/lit8 v13, v13, 0x1

    goto :goto_6fe

    .line 2509
    .end local v13           #i:I
    .end local v20           #salescode:Ljava/lang/String;
    :cond_72b
    const-string v26, "com.android.music.musicservicecommand"

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_740

    .line 2510
    const-string v26, "AudioService"

    const-string/jumbo v27, "musicservicecommand"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_80

    .line 2527
    :cond_740
    const-string v26, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_78e

    .line 2547
    const-string v26, "SGH-I727"

    const-string v27, "SGH-I777"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_80

    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    #getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {v26 .. v26}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "preferred_tty_mode"

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    packed-switch v26, :pswitch_data_81c

    .line 2557
    const-string/jumbo v25, "off"

    .line 2559
    .local v25, tty_mode:Ljava/lang/String;
    :goto_76e
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "tty_mode="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_80

    .line 2553
    .end local v25           #tty_mode:Ljava/lang/String;
    :pswitch_78b
    const-string v25, "full"

    .line 2554
    .restart local v25       #tty_mode:Ljava/lang/String;
    goto :goto_76e

    .line 2564
    .end local v25           #tty_mode:Ljava/lang/String;
    :cond_78e
    const-string v26, "android.settings.MONO_AUDIO_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_80

    .line 2565
    const-string/jumbo v26, "mono"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 2566
    .local v17, monoMode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    #setter for: Landroid/media/AudioService;->mMonoMode:I
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4202(Landroid/media/AudioService;I)I

    .line 2567
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    #calls: Landroid/media/AudioService;->setMonoMode(I)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;I)V

    goto/16 :goto_80

    .line 2582
    .end local v17           #monoMode:I
    .end local p1
    .restart local v15       #isMusicHPH:Ljava/lang/String;
    :cond_7c4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v27

    move v2, v12

    move/from16 v3, v21

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;III)V

    .line 2583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    const/16 v27, 0x9

    move-object/from16 v0, v26

    move/from16 v1, v27

    move v2, v12

    move/from16 v3, v21

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;III)V

    goto/16 :goto_ba

    .line 2589
    :cond_7ea
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v21

    move v3, v12

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;III)V

    goto/16 :goto_d8

    .line 2254
    :pswitch_data_7fe
    .packed-switch 0x1
        :pswitch_e9
        :pswitch_eb
    .end packed-switch

    .line 2314
    :sswitch_data_806
    .sparse-switch
        0x404 -> :sswitch_298
        0x408 -> :sswitch_298
        0x420 -> :sswitch_29b
    .end sparse-switch

    .line 2399
    :pswitch_data_814
    .packed-switch 0x0
        :pswitch_489
        :pswitch_486
    .end packed-switch

    .line 2549
    :pswitch_data_81c
    .packed-switch 0x1
        :pswitch_78b
    .end packed-switch
.end method
