.class Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton$AutoSyncObserver;
.super Ljava/lang/Object;
.source "AutoSyncSettingButton.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutoSyncObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton$AutoSyncObserver;->this$0:Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton$AutoSyncObserver;->this$0:Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;

    invoke-static {v0}, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->access$000(Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 23
    return-void
.end method
