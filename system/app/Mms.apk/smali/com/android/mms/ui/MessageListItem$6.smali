.class Lcom/android/mms/ui/MessageListItem$6;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->access$1400(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ComposeMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1200(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$6;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$1300(Lcom/android/mms/ui/MessageListItem;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/android/mms/ui/ComposeMessage;->showItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageListItem;)V

    .line 1277
    return-void
.end method
