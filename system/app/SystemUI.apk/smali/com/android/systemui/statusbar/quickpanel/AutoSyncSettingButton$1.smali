.class Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton$1;
.super Landroid/os/Handler;
.source "AutoSyncSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton$1;->this$0:Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;

    invoke-static {v0}, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->access$100(Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;)V

    .line 29
    return-void
.end method
