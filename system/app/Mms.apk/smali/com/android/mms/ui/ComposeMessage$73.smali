.class Lcom/android/mms/ui/ComposeMessage$73;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->addDeleteSoftKey()V
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
    .line 8094
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$73;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 8097
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$73;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->setDeleteModeLayout(Z)V

    .line 8098
    return-void
.end method
