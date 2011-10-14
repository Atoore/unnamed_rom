.class Lcom/sec/android/app/twlauncher/AppShortcutZone$2;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AppShortcutZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V
    .locals 0
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 637
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 638
    .local v4, tag:Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v3

    .line 642
    .local v3, mode:I
    instance-of v5, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v5, :cond_0

    instance-of v5, p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v5, :cond_0

    .line 643
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v2, v0

    .line 644
    .local v2, menuItem:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v5

    if-nez v5, :cond_0

    .line 647
    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 648
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    packed-switch v3, :pswitch_data_0

    .line 655
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0

    .line 650
    :pswitch_0
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_0

    .line 651
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteApplication(Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
