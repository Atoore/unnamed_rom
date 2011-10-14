.class Lcom/android/mms/ui/ComposeMessage$71;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 8028
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$71;->this$0:Lcom/android/mms/ui/ComposeMessage;

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
    .line 8031
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    move-object v1, v0

    .line 8032
    .local v1, item:Lcom/android/mms/ui/MessageListItem;
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    .line 8034
    .local v2, message:Lcom/android/mms/ui/MessageItem;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage$71;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v3, v1, v2}, Lcom/android/mms/ui/ComposeMessage;->handleCheckbox(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V

    .line 8035
    return-void
.end method
