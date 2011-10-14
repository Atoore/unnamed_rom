.class Landroid/webkit/WebFeedSniffer;
.super Ljava/lang/Object;
.source "WebFeedSniffer.java"


# static fields
.field private static final FEED_TYPE_ATOM:I = 0x6e

.field private static final FEED_TYPE_NONE:I = 0x0

.field private static final FEED_TYPE_RSS100:I = 0x78

.field private static final FEED_TYPE_RSS200:I = 0x64

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final NS_RDF:Ljava/lang/String; = "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

.field private static final NS_RSS:Ljava/lang/String; = "http://purl.org/rss/1.0/"

.field public static final TYPE_ATOM:Ljava/lang/String; = "application/atom+xml"

.field public static final TYPE_MAYBE_FEED:Ljava/lang/String; = "application/vnd.webkit.maybe.feed"

.field public static final TYPE_RDF:Ljava/lang/String; = "application/rdf+xml"

.field public static final TYPE_RSS:Ljava/lang/String; = "application/rss+xml"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IsDocumentElement(Ljava/lang/String;II)Z
    .registers 11
    .parameter "data"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v6, 0x3c

    const/4 v5, -0x1

    const/4 v3, 0x0

    const-string v7, "WebFeedSniffer.IsDocumentElement index of \'<\' = "

    const-string/jumbo v4, "webkit"

    .line 77
    invoke-virtual {p0, v6, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    .line 79
    sget-boolean v1, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v1, :cond_2a

    .line 80
    const-string/jumbo v1, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebFeedSniffer.IsDocumentElement index of \'<\' = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_2a
    if-ne p1, v5, :cond_2e

    move v1, v3

    .line 119
    :goto_2d
    return v1

    .line 86
    :cond_2e
    add-int/lit8 p1, p1, 0x1

    .line 87
    if-lt p1, p2, :cond_34

    move v1, v3

    .line 88
    goto :goto_2d

    .line 93
    :cond_34
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 94
    .local v0, c:C
    sget-boolean v1, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v1, :cond_5f

    .line 95
    const-string/jumbo v1, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebFeedSniffer.IsDocumentElement char at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_5f
    const/16 v1, 0x3f

    if-eq v0, v1, :cond_69

    const/16 v1, 0x21

    if-eq v0, v1, :cond_69

    move v1, v3

    .line 98
    goto :goto_2d

    .line 103
    :cond_69
    const/16 v1, 0x3e

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    .line 105
    sget-boolean v1, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v1, :cond_8c

    .line 106
    const-string/jumbo v1, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebFeedSniffer.IsDocumentElement index of \'>\' = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_8c
    if-ne p1, v5, :cond_90

    move v1, v3

    .line 109
    goto :goto_2d

    .line 111
    :cond_90
    add-int/lit8 p1, p1, 0x1

    .line 113
    invoke-virtual {p0, v6, p1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    .line 115
    sget-boolean v1, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v1, :cond_b3

    .line 116
    const-string/jumbo v1, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebFeedSniffer.IsDocumentElement index of \'<\' = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_b3
    if-eq p1, v5, :cond_b7

    if-lt p1, p2, :cond_2e

    .line 119
    :cond_b7
    const/4 v1, 0x1

    goto/16 :goto_2d
.end method

.method private static containsTopLevelSubstring(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "dataString"
    .parameter "substring"

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v5, "webkit"

    const-string v4, "WebFeedSniffer.containsTopLevelSubstring substring="

    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 136
    .local v0, offset:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_32

    .line 137
    sget-boolean v1, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v1, :cond_30

    .line 138
    const-string/jumbo v1, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebFeedSniffer.containsTopLevelSubstring substring="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    move v1, v3

    .line 146
    :goto_31
    return v1

    .line 142
    :cond_32
    sget-boolean v1, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v1, :cond_59

    .line 143
    const-string/jumbo v1, "webkit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebFeedSniffer.containsTopLevelSubstring substring="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_59
    invoke-static {p0, v3, v0}, Landroid/webkit/WebFeedSniffer;->IsDocumentElement(Ljava/lang/String;II)Z

    move-result v1

    goto :goto_31
.end method

.method private static feedTypeFromContent(Ljava/lang/String;)I
    .registers 5
    .parameter "dataString"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, type:I
    const-string v1, "<rss"

    invoke-static {p0, v1}, Landroid/webkit/WebFeedSniffer;->containsTopLevelSubstring(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_e

    .line 155
    const/16 v0, 0x64

    .line 168
    :cond_d
    :goto_d
    return v0

    .line 157
    :cond_e
    const-string v1, "<feed"

    invoke-static {p0, v1}, Landroid/webkit/WebFeedSniffer;->containsTopLevelSubstring(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_19

    .line 159
    const/16 v0, 0x6e

    goto :goto_d

    .line 161
    :cond_19
    const-string v1, "<rdf:RDF"

    invoke-static {p0, v1}, Landroid/webkit/WebFeedSniffer;->containsTopLevelSubstring(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_d

    const-string v1, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_d

    const-string v1, "http://purl.org/rss/1.0/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_d

    .line 165
    const/16 v0, 0x78

    goto :goto_d
.end method

.method public static mimeType([BI)Ljava/lang/String;
    .registers 7
    .parameter "data"
    .parameter "length"

    .prologue
    .line 173
    const/16 v2, 0x200

    if-le p1, v2, :cond_6

    .line 174
    const/16 p1, 0x200

    .line 176
    :cond_6
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    sub-int v3, p1, v3

    invoke-direct {v0, p0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 178
    .local v0, dataString:Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/WebFeedSniffer;->feedTypeFromContent(Ljava/lang/String;)I

    move-result v1

    .line 180
    .local v1, type:I
    sget-boolean v2, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    if-eqz v2, :cond_3a

    .line 181
    const-string/jumbo v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebFeedSniffer.mimeType dataString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_3a
    if-eqz v1, :cond_44

    .line 184
    new-instance v2, Ljava/lang/String;

    const-string v3, "application/vnd.webkit.maybe.feed"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 187
    :goto_43
    return-object v2

    :cond_44
    const/4 v2, 0x0

    goto :goto_43
.end method
