.class Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 21
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;

    invoke-static {v0}, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->access$000(Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;)V

    .line 25
    return-void
.end method
