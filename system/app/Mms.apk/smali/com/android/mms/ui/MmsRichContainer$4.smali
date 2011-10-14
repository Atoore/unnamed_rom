.class Lcom/android/mms/ui/MmsRichContainer$4;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsRichContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$4;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "Mms/MmsRichContainer"

    .line 961
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 963
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 964
    .local v1, page:Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 965
    const-string v3, "Mms/MmsRichContainer"

    const-string v3, "page is null !!!"

    invoke-static {v6, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 977
    .end local v1           #page:Landroid/view/ViewGroup;
    :goto_0
    return v3

    .line 968
    .restart local v1       #page:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 969
    .local v2, richContainer:Landroid/view/ViewGroup;
    if-nez v2, :cond_1

    .line 970
    const-string v3, "Mms/MmsRichContainer"

    const-string v3, "richContainer is null !!!"

    invoke-static {v6, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 971
    goto :goto_0

    .line 973
    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 974
    .local v0, curPage:I
    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer$4;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v3, v0, v5}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    move v3, v5

    .line 975
    goto :goto_0

    .end local v0           #curPage:I
    .end local v1           #page:Landroid/view/ViewGroup;
    .end local v2           #richContainer:Landroid/view/ViewGroup;
    :cond_2
    move v3, v4

    .line 977
    goto :goto_0
.end method
