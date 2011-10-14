.class Landroid/media/MediaScanner$FileCacheEntry;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileCacheEntry"
.end annotation


# instance fields
.field mFormat:I

.field mLastModified:J

.field mLastModifiedChanged:Z

.field mLastModifiedPrevious:J

.field mPath:Ljava/lang/String;

.field mRowId:J

.field mSeenInFileSystem:Z

.field mTableUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;JLjava/lang/String;J)V
    .registers 8
    .parameter "tableUri"
    .parameter "rowId"
    .parameter "path"
    .parameter "lastModified"

    .prologue
    const/4 v0, 0x0

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-object p1, p0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    .line 699
    iput-wide p2, p0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 700
    iput-object p4, p0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 701
    iput-wide p5, p0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    .line 702
    iput-boolean v0, p0, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    .line 703
    iput-boolean v0, p0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    .line 704
    return-void
.end method

.method constructor <init>(Landroid/net/Uri;JLjava/lang/String;JI)V
    .registers 9
    .parameter "tableUri"
    .parameter "rowId"
    .parameter "path"
    .parameter "lastModified"
    .parameter "format"

    .prologue
    const/4 v0, 0x0

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    iput-object p1, p0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    .line 689
    iput-wide p2, p0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 690
    iput-object p4, p0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 691
    iput-wide p5, p0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    .line 692
    iput p7, p0, Landroid/media/MediaScanner$FileCacheEntry;->mFormat:I

    .line 693
    iput-boolean v0, p0, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    .line 694
    iput-boolean v0, p0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    .line 695
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    return-object v0
.end method
