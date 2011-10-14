.class Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ComposeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposerAttachmentListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/model/AttachmentModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResource:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessage;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5317
    .local p4, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessage;

    .line 5318
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 5319
    iput p3, p0, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;->mResource:I

    .line 5320
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 5321
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 5327
    if-nez p2, :cond_0

    .line 5328
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v8, p0, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;->mResource:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 5331
    :cond_0
    const v7, 0x7f080024

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5332
    .local v1, attachmentName:Landroid/widget/TextView;
    const v7, 0x7f080025

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 5333
    .local v3, removeImage:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 5334
    .local v0, attachment:Lcom/android/mms/model/AttachmentModel;
    move v4, p1

    .line 5336
    .local v4, selectPosition:I
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 5338
    .local v2, fileName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5339
    .local v5, tempName:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/x-vCard"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5340
    const-string v7, ".vcf"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 5341
    const-string v7, ".vcf"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5342
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5344
    :cond_1
    const v6, 0x7f020099

    .line 5367
    .local v6, typeImage:I
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 5368
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5369
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 5370
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 5372
    new-instance v7, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter$1;

    invoke-direct {v7, p0, v0, v4}, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter$1;-><init>(Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;Lcom/android/mms/model/AttachmentModel;I)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5379
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessage$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessage;->access$8200(Lcom/android/mms/ui/ComposeMessage;)Landroid/view/View$OnKeyListener;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 5381
    return-object p2

    .line 5345
    .end local v6           #typeImage:I
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/x-vCalendar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5346
    const-string v7, ".vcs"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 5347
    const-string v7, ".vcs"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5348
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5350
    :cond_3
    const v6, 0x7f020098

    .restart local v6       #typeImage:I
    goto :goto_0

    .line 5351
    .end local v6           #typeImage:I
    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/x-vNote"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 5352
    const-string v7, ".vnt"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 5353
    const-string v7, ".vnt"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5354
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5356
    :cond_5
    const v6, 0x7f02009c

    .restart local v6       #typeImage:I
    goto :goto_0

    .line 5357
    .end local v6           #typeImage:I
    :cond_6
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/x-vtodo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 5358
    const-string v7, ".vts"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 5359
    const-string v7, ".vts"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5360
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5362
    :cond_7
    const v6, 0x7f02009b

    .restart local v6       #typeImage:I
    goto/16 :goto_0

    .line 5364
    .end local v6           #typeImage:I
    :cond_8
    const v6, 0x7f0200e8

    .restart local v6       #typeImage:I
    goto/16 :goto_0
.end method
