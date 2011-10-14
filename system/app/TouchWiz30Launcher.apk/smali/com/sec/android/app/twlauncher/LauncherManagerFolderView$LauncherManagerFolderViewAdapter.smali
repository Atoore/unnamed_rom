.class Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;
.super Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
.source "LauncherManagerFolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LauncherManagerFolderViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;->this$0:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    .line 24
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 30
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 31
    invoke-virtual {v1, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 33
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v2, :cond_0

    .line 34
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v2, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setDeleteBadgeOn(Z)V

    .line 35
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v2, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuItemView;->setIgnoreDrawableStateChanges(Z)V

    .line 36
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v2, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuItemView;->setFocusableInTouchMode(Z)V

    .line 38
    :cond_0
    return-object v1
.end method
