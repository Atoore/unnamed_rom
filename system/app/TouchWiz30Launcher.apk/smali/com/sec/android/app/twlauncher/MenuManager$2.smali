.class Lcom/sec/android/app/twlauncher/MenuManager$2;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/MenuManager;->switchToListMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;

.field final synthetic val$adapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/TextIconAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3103
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$2;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/MenuManager$2;->val$adapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3108
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$2;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$400(Lcom/sec/android/app/twlauncher/MenuManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3119
    :goto_0
    return-void

    .line 3111
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$2;->val$adapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    invoke-virtual {v2, p3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->getItem(I)Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    invoke-virtual {v2, p3}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->getId(I)J

    move-result-wide v2

    long-to-int v1, v2

    .line 3112
    .local v1, index:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$2;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$500(Lcom/sec/android/app/twlauncher/MenuManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3113
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    instance-of v2, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_1

    .line 3114
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$2;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$2;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .end local v0           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {v2, v3, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->access$600(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Z

    goto :goto_0

    .line 3116
    .restart local v0       #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$2;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v2, v2, Lcom/sec/android/app/twlauncher/Scene;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0
.end method
