.class Lcom/sec/android/app/twlauncher/AppShortcutZone$4;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 708
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 710
    const/16 v3, 0x17

    if-ne p2, v3, :cond_3

    .line 714
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 715
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    iput-boolean v5, v3, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIsKeyDownEvent:Z

    :cond_0
    :goto_0
    move v3, v5

    .line 741
    :goto_1
    return v3

    .line 718
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    iget-boolean v3, v3, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIsKeyDownEvent:Z

    if-nez v3, :cond_2

    move v3, v5

    .line 719
    goto :goto_1

    .line 720
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    iput-boolean v4, v3, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mIsKeyDownEvent:Z

    .line 721
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 722
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v3, :cond_0

    .line 723
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 724
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-static {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0

    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #tag:Ljava/lang/Object;
    :cond_3
    move v3, v4

    .line 741
    goto :goto_1
.end method
