.class Lcom/android/systemui/statusbar/quickpanel/DataSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "DataSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const-string v8, "connectivity"

    const-string v7, "airplane_mode_on"

    const-string v5, "DataSettingButton"

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, intentAction:Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    const-string v2, "DataSettingButton"

    const-string v2, "mReceiver: ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;

    invoke-static {v2}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->access$000(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 36
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;

    invoke-static {v3}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->access$200(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->access$102(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;I)I

    .line 37
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->access$302(Z)Z

    .line 39
    const-string v2, "DataSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAirPlaneMode flag :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;

    invoke-static {v3}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->access$100(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mobileDataEnabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->access$300()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v2, "DataSettingButton"

    const-string v2, "prepareQuickPanelSettingIcon(QUICKPANEL_DATA) from broadcast receiver(), ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;

    invoke-static {v2}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->access$400(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;)V

    .line 55
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v2, "android.net.conn.MOBILE_DATA_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const-string v2, "DataSettingButton"

    const-string v2, "mReceiver: MOBILE_DATA_CHANGED"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;

    invoke-static {v3}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->access$500(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->access$102(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;I)I

    .line 52
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;

    invoke-static {v2}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->access$600(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 53
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->access$302(Z)Z

    goto :goto_0
.end method
