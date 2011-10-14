.class Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllowAttachmentListener"
.end annotation


# instance fields
.field private mAppend:Z

.field private mDataUri:Landroid/net/Uri;

.field private mMediaType:Ljava/lang/String;

.field private mReqCode:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;Landroid/net/Uri;IZ)V
    .locals 0
    .parameter
    .parameter "mediaType"
    .parameter "dataUri"
    .parameter "reqCode"
    .parameter "append"

    .prologue
    .line 4343
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4344
    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    .line 4345
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    .line 4346
    iput p4, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mReqCode:I

    .line 4347
    iput-boolean p5, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mAppend:Z

    .line 4348
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 4329
    const-string v0, "Mms/AllowAttachmentListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(),which="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4331
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 4332
    .local v2, location:I
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const v4, 0x7f0900dc

    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessage;->access$6500(Lcom/android/mms/ui/ComposeMessage;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4333
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mAppend:Z

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage;->access$7000(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;IZZZ)V

    .line 4341
    :cond_0
    :goto_0
    return-void

    .line 4334
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const v4, 0x7f0900dd

    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessage;->access$6500(Lcom/android/mms/ui/ComposeMessage;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4335
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mAppend:Z

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage;->access$7100(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;IZZZ)V

    goto :goto_0

    .line 4336
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const v4, 0x7f0900db

    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessage;->access$6500(Lcom/android/mms/ui/ComposeMessage;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4337
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mAppend:Z

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessage;->access$7200(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;IZZZ)V

    goto :goto_0

    .line 4338
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mMediaType:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const v4, 0x7f09015d

    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessage;->access$6500(Lcom/android/mms/ui/ComposeMessage;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4339
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;

    iget-boolean v6, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mAppend:Z

    iget v9, p0, Lcom/android/mms/ui/ComposeMessage$AllowAttachmentListener;->mReqCode:I

    move v7, v3

    move v8, v3

    invoke-static/range {v4 .. v9}, Lcom/android/mms/ui/ComposeMessage;->access$6400(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;ZZZI)V

    goto :goto_0
.end method
