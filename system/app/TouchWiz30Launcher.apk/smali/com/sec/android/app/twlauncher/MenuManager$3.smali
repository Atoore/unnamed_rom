.class Lcom/sec/android/app/twlauncher/MenuManager$3;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 3123
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->val$adapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 3128
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$400(Lcom/sec/android/app/twlauncher/MenuManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3129
    const/4 v2, 0x0

    .line 3151
    :goto_0
    return v2

    .line 3131
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->val$adapter:Lcom/sec/android/app/twlauncher/TextIconAdapter;

    invoke-virtual {v2, p3}, Lcom/sec/android/app/twlauncher/TextIconAdapter;->getItem(I)Lcom/sec/android/app/twlauncher/TextIconAdapter$Item;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    invoke-virtual {v2, p3}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->getId(I)J

    move-result-wide v2

    long-to-int v1, v2

    .line 3132
    .local v1, index:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->access$500(Lcom/sec/android/app/twlauncher/MenuManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 3150
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$3;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v3, 0x0

    invoke-static {v2, p2, v0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->access$700(Lcom/sec/android/app/twlauncher/MenuManager;Landroid/view/View;Lcom/sec/android/app/twlauncher/ApplicationInfo;Lcom/sec/android/app/twlauncher/UserFolder;)V

    .line 3151
    const/4 v2, 0x1

    goto :goto_0
.end method
