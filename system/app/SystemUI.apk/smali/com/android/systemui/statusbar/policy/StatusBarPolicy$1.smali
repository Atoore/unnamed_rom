.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v2, "StatusBarPolicy"

    .line 638
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$102(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Context;)Landroid/content/Context;

    .line 641
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 647
    :cond_2
    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 648
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 650
    :cond_3
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 651
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 653
    :cond_4
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 657
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 659
    :cond_6
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 665
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 667
    :cond_7
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 672
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 674
    :cond_9
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 677
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 679
    :cond_b
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 681
    :cond_c
    const-string v1, "StatusBarPolicy"

    const-string v1, "[GPS ICON] GPS_ENABLED_CHANGE_ACTION or GPS_FIX_CHANGE_ACTION"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1000(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 684
    :cond_d
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 686
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    goto/16 :goto_0

    .line 688
    :cond_f
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 689
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1200(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 691
    :cond_10
    const-string v1, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 692
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1300(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 694
    :cond_11
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 697
    :cond_12
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 699
    :cond_13
    const-string v1, "android.net.wimax.WIMAX_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "android.net.wimax.WIMAX_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 702
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 705
    :cond_15
    const-string v1, "com.sec.android.service.statusbar.COLLAPSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 706
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapse()V

    goto/16 :goto_0

    .line 710
    :cond_16
    const-string v1, "com.android.systemui.statusbar.SHOW_NOT_DIS_CHARGED_POPUP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 711
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Z)V

    goto/16 :goto_0

    .line 715
    :cond_17
    const-string v1, "android.settings.POWERSAVING_POPUP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    const-string v1, "StatusBarPolicy"

    const-string v1, "SHOW_POWERSAVING_POPUP"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$1;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    goto/16 :goto_0
.end method
