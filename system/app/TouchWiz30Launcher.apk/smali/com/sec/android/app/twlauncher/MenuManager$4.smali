.class Lcom/sec/android/app/twlauncher/MenuManager$4;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3211
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "aView"

    .prologue
    .line 3213
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 3214
    .local v4, tag:Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 3254
    :cond_0
    :goto_0
    return-void

    .line 3217
    :cond_1
    instance-of v6, p1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v6, :cond_2

    .line 3218
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v5, v0

    .line 3219
    .local v5, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3223
    .end local v5           #view:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_2
    instance-of v6, v4, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v6, :cond_3

    .line 3224
    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v2, v0

    .line 3225
    .local v2, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget v6, v6, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 3232
    iget-boolean v6, v2, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    if-nez v6, :cond_0

    .line 3235
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 3236
    .local v3, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppMenu;->hasFolderOpen()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3239
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v6, v3, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$600(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    goto :goto_0

    .line 3229
    .end local v3           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v6, p1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$800(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    goto :goto_0

    .line 3242
    .end local v2           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_3
    instance-of v6, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v6, :cond_0

    .line 3243
    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 3244
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget v6, v6, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    packed-switch v6, :pswitch_data_1

    .line 3251
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0

    .line 3246
    :pswitch_1
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3247
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager$4;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v6, v6, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteApplication(Ljava/lang/String;)V

    goto :goto_0

    .line 3225
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 3244
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method
