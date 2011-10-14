.class Lcom/android/systemui/statusbar/StatusBarService$4;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 1685
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1687
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1688
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1689
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 1703
    :cond_0
    :goto_0
    return-void

    .line 1691
    :cond_1
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1692
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateResources()V

    .line 1695
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$800(Lcom/android/systemui/statusbar/StatusBarService;)V

    goto :goto_0

    .line 1697
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1698
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 1701
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService$4;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v1, v1, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->marqueeStatusBar()V

    goto :goto_0
.end method
