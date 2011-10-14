.class Lcom/android/mms/ui/MessageListAdapter$ArrayData;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArrayData"
.end annotation


# instance fields
.field final mId:J

.field final mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListAdapter;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "type"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$ArrayData;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-wide p2, p0, Lcom/android/mms/ui/MessageListAdapter$ArrayData;->mId:J

    .line 165
    iput-object p4, p0, Lcom/android/mms/ui/MessageListAdapter$ArrayData;->mType:Ljava/lang/String;

    .line 166
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    .line 170
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/MessageListAdapter$ArrayData;

    move-object v1, v0

    .line 171
    .local v1, data:Lcom/android/mms/ui/MessageListAdapter$ArrayData;
    iget-wide v2, p0, Lcom/android/mms/ui/MessageListAdapter$ArrayData;->mId:J

    iget-wide v4, v1, Lcom/android/mms/ui/MessageListAdapter$ArrayData;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter$ArrayData;->mType:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/mms/ui/MessageListAdapter$ArrayData;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const/4 v2, 0x1

    .line 174
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
