.class Lcom/android/mms/ui/ComposeMessage$50;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->setInputFilterComposeForSMS()V
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
    .line 5148
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$50;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 14
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 5158
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v6

    .line 5159
    .local v6, inputSize:[I
    const/4 v11, 0x4

    new-array v9, v11, [I

    fill-array-data v9, :array_0

    .line 5160
    .local v9, size:[I
    const/4 v7, 0x0

    .line 5161
    .local v7, keep:I
    const/4 v8, 0x0

    .line 5164
    .local v8, septets:I
    move/from16 v0, p5

    move/from16 v1, p6

    if-eq v0, v1, :cond_0

    .line 5165
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object v0, v11

    move v1, v12

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5169
    .local v5, destString:Ljava/lang/String;
    :goto_0
    const/4 v11, 0x3

    aget v11, v6, v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    .line 5170
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v5, v11, v12}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v9

    .line 5175
    :goto_1
    const/4 v11, 0x2

    aget v7, v9, v11

    .line 5182
    const-string v11, "SMSCompose"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SMSlength : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v9, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget v13, v9, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    aget v13, v9, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x3

    aget v13, v9, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5183
    const-string v11, "SMSCompose"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SMSinput  : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget v13, v6, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget v13, v6, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    aget v13, v6, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x3

    aget v13, v6, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5186
    const/4 v11, 0x0

    aget v11, v9, v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_2

    .line 5187
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$50;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessage;->access$8000(Lcom/android/mms/ui/ComposeMessage;)V

    .line 5188
    const-string v11, ""

    .line 5210
    :goto_2
    return-object v11

    .line 5167
    .end local v5           #destString:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #destString:Ljava/lang/String;
    goto/16 :goto_0

    .line 5172
    :cond_1
    const/4 v11, 0x0

    invoke-static {v5, v11}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v9

    goto/16 :goto_1

    .line 5189
    :cond_2
    sub-int v11, p3, p2

    if-lt v7, v11, :cond_4

    .line 5190
    const/4 v11, 0x1

    aget v11, v6, v11

    if-ge v7, v11, :cond_3

    .line 5191
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$50;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessage;->access$8000(Lcom/android/mms/ui/ComposeMessage;)V

    .line 5192
    const-string v11, ""

    goto :goto_2

    .line 5194
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 5197
    :cond_4
    const/4 v10, 0x0

    .line 5198
    .local v10, subChar:Ljava/lang/CharSequence;
    move v3, v7

    .line 5201
    .local v3, decrKeep:I
    :goto_3
    add-int/lit8 v4, v3, -0x1

    .end local v3           #decrKeep:I
    .local v4, decrKeep:I
    add-int v11, p2, v3

    move-object v0, p1

    move/from16 v1, p2

    move v2, v11

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 5203
    const/4 v11, 0x1

    :try_start_0
    invoke-static {v10, v11}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 5208
    :goto_4
    if-gt v8, v7, :cond_5

    move-object v11, v10

    .line 5210
    goto :goto_2

    .line 5204
    :catch_0
    move-exception v11

    goto :goto_4

    :cond_5
    move v3, v4

    .end local v4           #decrKeep:I
    .restart local v3       #decrKeep:I
    goto :goto_3

    .line 5159
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
