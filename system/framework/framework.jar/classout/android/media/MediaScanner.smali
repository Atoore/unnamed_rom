.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$FileCacheEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final APP_PACKAGE_PROJECTION:[Ljava/lang/String; = null

.field private static final AUDIO_MP3:Ljava/lang/String; = "audio/mp3"

.field private static final AUDIO_MPEG3:Ljava/lang/String; = "audio/mpeg3"

.field private static final AUDIO_MPG:Ljava/lang/String; = "audio/mpg"

.field private static final AUDIO_PROJECTION:[Ljava/lang/String; = null

.field private static final AUDIO_XMP3:Ljava/lang/String; = "audio/x-mp3"

.field private static final AUDIO_XMPEG:Ljava/lang/String; = "audio/x-mpeg"

.field private static final AUDIO_XMPEG3:Ljava/lang/String; = "audio/x-mpeg3"

.field private static final DATE_MODIFIED_APP_PACKAGE_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_AUDIO_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_IMAGES_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_VIDEOCALL_IMAGES_COLUMN_INDEX:I = 0x2

.field private static final DATE_MODIFIED_VIDEO_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final EXTERNAL_SD_ROOT:Ljava/lang/String; = null

.field private static final EXTERNAL_USB_ROOT:Ljava/lang/String; = null

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String; = null

.field private static final GENRE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static ID3_GENRES:[Ljava/lang/String; = null

.field private static ID3_TO_SEC_GENRES:[Ljava/lang/String; = null

.field private static final ID_APP_PACKAGE_COLUMN_INDEX:I = 0x0

.field private static final ID_AUDIO_COLUMN_INDEX:I = 0x0

.field private static final ID_IMAGES_COLUMN_INDEX:I = 0x0

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final ID_VIDEOCALL_IMAGES_COLUMN_INDEX:I = 0x0

.field private static final ID_VIDEO_COLUMN_INDEX:I = 0x0

.field private static final IMAGES_PROJECTION:[Ljava/lang/String; = null

.field private static final INTERNAL_SD_ROOT:Ljava/lang/String; = null

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_APP_PACKAGE_COLUMN_INDEX:I = 0x1

.field private static final PATH_AUDIO_COLUMN_INDEX:I = 0x1

.field private static final PATH_IMAGES_COLUMN_INDEX:I = 0x1

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PATH_VIDEOCALL_IMAGES_COLUMN_INDEX:I = 0x1

.field private static final PATH_VIDEO_COLUMN_INDEX:I = 0x1

.field private static final PLAYLISTS_PROJECTION:[Ljava/lang/String; = null

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String; = null

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static final VIDEOCALL_IMAGES_PROJECTION:[Ljava/lang/String;

.field private static final VIDEO_PROJECTION:[Ljava/lang/String;

.field public static bIsShuttingDown:Z

.field public static generation:I

.field private static final mID3ToSecGenreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppPackageUri:Landroid/net/Uri;

.field private mAudioUri:Landroid/net/Uri;

.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private mCodecParsingTime:J

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mExternalSDCardRemoval:Z

.field private mFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesUri:Landroid/net/Uri;

.field private mGeneration:I

.field private mGenreCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mGenresUri:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mInsertPendingCount_AUDIO:I

.field private mInsertPendingCount_IMAGE:I

.field private mInsertPendingCount_VIDEO:I

.field private mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;

.field private mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;

.field private mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMtpObjectHandle:I

.field private mNativeContext:I

.field private mOriginalCount:I

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mThumbsUri:Landroid/net/Uri;

.field private mVideoCallImagesUri:Landroid/net/Uri;

.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v6, "Dance"

    const-string v4, "Others"

    const-string v3, "Rock"

    .line 146
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 154
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    .line 155
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    .line 161
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScanner;->EXTERNAL_USB_ROOT:Ljava/lang/String;

    .line 166
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "format"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 173
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->AUDIO_PROJECTION:[Ljava/lang/String;

    .line 178
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 186
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->VIDEO_PROJECTION:[Ljava/lang/String;

    .line 196
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "mini_thumb_magic"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->IMAGES_PROJECTION:[Ljava/lang/String;

    .line 216
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->VIDEOCALL_IMAGES_PROJECTION:[Ljava/lang/String;

    .line 231
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->PLAYLISTS_PROJECTION:[Ljava/lang/String;

    .line 237
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "playlist_id"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 245
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "name"

    aput-object v1, v0, v7

    sput-object v0, Landroid/media/MediaScanner;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 251
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->APP_PACKAGE_PROJECTION:[Ljava/lang/String;

    .line 288
    const/16 v0, 0x95

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v5

    const-string v1, "Classic Rock"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Dance"

    aput-object v6, v0, v1

    const/4 v1, 0x4

    const-string v2, "Disco"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "BritPop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Negerpunk"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Jpop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "and further - Unknown"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 440
    const/16 v0, 0x95

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v5

    const-string v1, "Rock"

    aput-object v3, v0, v7

    const/4 v1, 0x2

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Dance"

    aput-object v6, v0, v1

    const/4 v1, 0x4

    const-string v2, "Dance"

    aput-object v6, v0, v1

    const/4 v1, 0x5

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0xc

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v2, "Dance"

    aput-object v6, v0, v1

    const/16 v1, 0x13

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x17

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Dance"

    aput-object v6, v0, v1

    const/16 v1, 0x1a

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x22

    const-string v2, "Dance"

    aput-object v6, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x25

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x26

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x28

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x30

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x32

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Dance"

    aput-object v6, v0, v1

    const/16 v1, 0x37

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Dance"

    aput-object v6, v0, v1

    const/16 v1, 0x40

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x44

    const-string v2, "Dance"

    aput-object v6, v0, v1

    const/16 v1, 0x45

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x46

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x47

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Dance"

    aput-object v6, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x52

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x55

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x58

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x64

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Dance"

    aput-object v6, v0, v1

    const/16 v1, 0x71

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x79

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x7b

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance"

    aput-object v6, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Dance"

    aput-object v6, v0, v1

    const/16 v1, 0x81

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x82

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x86

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x87

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x88

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Others"

    aput-object v4, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Rock"

    aput-object v3, v0, v1

    const/16 v1, 0x91

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "<unknown>"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->ID3_TO_SEC_GENRES:[Ljava/lang/String;

    .line 592
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mID3ToSecGenreMap:Ljava/util/HashMap;

    .line 722
    sput v5, Landroid/media/MediaScanner;->generation:I

    .line 728
    sput-boolean v5, Landroid/media/MediaScanner;->bIsShuttingDown:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 731
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaScanner;->mCodecParsingTime:J

    .line 757
    new-instance v0, Landroid/media/MediaScanner$MyMediaScannerClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V

    iput-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 734
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 735
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 736
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 737
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 741
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaScanner;->mExternalSDCardRemoval:Z

    .line 742
    sget v0, Landroid/media/MediaScanner;->generation:I

    iput v0, p0, Landroid/media/MediaScanner;->mGeneration:I

    .line 745
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 746
    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$1014(Landroid/media/MediaScanner;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iget-wide v0, p0, Landroid/media/MediaScanner;->mCodecParsingTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/MediaScanner;->mCodecParsingTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Landroid/media/MediaScanner;->mInsertPendingValues_AUDIO:[Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/media/MediaScanner;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I

    return v0
.end method

.method static synthetic access$1502(Landroid/media/MediaScanner;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput p1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I

    return p1
.end method

.method static synthetic access$1508(Landroid/media/MediaScanner;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_AUDIO:I

    return v0
.end method

.method static synthetic access$1600(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Landroid/media/MediaScanner;->mInsertPendingValues_IMAGE:[Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/media/MediaScanner;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I

    return v0
.end method

.method static synthetic access$1702(Landroid/media/MediaScanner;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput p1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I

    return p1
.end method

.method static synthetic access$1708(Landroid/media/MediaScanner;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_IMAGE:I

    return v0
.end method

.method static synthetic access$1800(Landroid/media/MediaScanner;)[Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/media/MediaScanner;[Landroid/content/ContentValues;)[Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-object p1, p0, Landroid/media/MediaScanner;->mInsertPendingValues_VIDEO:[Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$1900(Landroid/media/MediaScanner;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I

    return v0
.end method

.method static synthetic access$1902(Landroid/media/MediaScanner;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput p1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I

    return p1
.end method

.method static synthetic access$1908(Landroid/media/MediaScanner;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaScanner;->mInsertPendingCount_VIDEO:I

    return v0
.end method

.method static synthetic access$200(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/MediaScanner;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$2200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 143
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    invoke-static {p0}, Landroid/media/MediaScanner;->getSecGenre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoCallImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mAppPackageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$2700(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$2702(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$2800(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$2902(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$300(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/media/MediaScanner;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$3102(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$3200(Landroid/media/MediaScanner;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Landroid/media/MediaScanner;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mExternalSDCardRemoval:Z

    return p1
.end method

.method static synthetic access$3400(Landroid/media/MediaScanner;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Landroid/media/MediaScanner;->mGeneration:I

    return v0
.end method

.method static synthetic access$3500(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 143
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 143
    sget-object v0, Landroid/media/MediaScanner;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile_Special(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method private addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .registers 22
    .parameter "entry"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"
    .parameter "index"

    .prologue
    .line 3131
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 3132
    .local v8, entryLength:I
    :goto_4
    if-lez v8, :cond_19

    const/4 v13, 0x1

    sub-int v13, v8, v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-eqz v13, :cond_19

    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 3135
    :cond_19
    const/4 v13, 0x3

    if-ge v8, v13, :cond_1e

    const/4 v13, 0x0

    .line 3188
    :goto_1d
    return v13

    .line 3136
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v8, v13, :cond_2d

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3140
    :cond_2d
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 3141
    .local v6, ch1:C
    const/16 v13, 0x2f

    if-eq v6, v13, :cond_57

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v13

    if-eqz v13, :cond_ab

    const/4 v13, 0x1

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x3a

    if-ne v13, v14, :cond_ab

    const/4 v13, 0x2

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5c

    if-ne v13, v14, :cond_ab

    :cond_57
    const/4 v13, 0x1

    move v9, v13

    .line 3144
    .local v9, fullPath:Z
    :goto_59
    if-nez v9, :cond_72

    .line 3145
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3150
    :cond_72
    const/4 v3, 0x0

    .line 3153
    .local v3, bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    const/4 v4, 0x0

    .line 3155
    .local v4, bestMatchLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 3156
    .local v10, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_81
    :goto_81
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_99

    .line 3157
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaScanner$FileCacheEntry;

    .line 3158
    .local v5, cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v12, v5, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 3160
    .local v12, path:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_ae

    .line 3161
    move-object v3, v5

    .line 3173
    .end local v5           #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v12           #path:Ljava/lang/String;
    :cond_99
    if-eqz v3, :cond_a8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    move-object v13, v0

    iget-object v14, v3, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_bc

    .line 3174
    :cond_a8
    const/4 v13, 0x0

    goto/16 :goto_1d

    .line 3141
    .end local v3           #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v4           #bestMatchLength:I
    .end local v9           #fullPath:Z
    .end local v10           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_ab
    const/4 v13, 0x0

    move v9, v13

    goto :goto_59

    .line 3165
    .restart local v3       #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v4       #bestMatchLength:I
    .restart local v5       #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v9       #fullPath:Z
    .restart local v10       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    .restart local v12       #path:Ljava/lang/String;
    :cond_ae
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 3166
    .local v11, matchLength:I
    if-le v11, v4, :cond_81

    .line 3167
    move-object v3, v5

    .line 3168
    move v4, v11

    goto :goto_81

    .line 3179
    .end local v5           #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v11           #matchLength:I
    .end local v12           #path:Ljava/lang/String;
    :cond_bc
    :try_start_bc
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 3180
    const-string/jumbo v13, "play_order"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p4

    move-object v1, v13

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3181
    const-string v13, "audio_id"

    iget-wide v14, v3, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p4

    move-object v1, v13

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3182
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_e9} :catch_ec

    .line 3188
    const/4 v13, 0x1

    goto/16 :goto_1d

    .line 3183
    :catch_ec
    move-exception v13

    move-object v7, v13

    .line 3184
    .local v7, e:Landroid/os/RemoteException;
    const-string v13, "MediaScanner"

    const-string v14, "RemoteException in MediaScanner.addPlayListEntry()"

    invoke-static {v13, v14, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3185
    const/4 v13, 0x0

    goto/16 :goto_1d
.end method

.method private static getSecGenre(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "id3Genres"

    .prologue
    .line 604
    move-object v0, p0

    .line 606
    .local v0, secGenre:Ljava/lang/String;
    if-nez p0, :cond_6

    .line 607
    const-string v1, "<unknown>"

    .line 619
    :goto_5
    return-object v1

    .line 609
    :cond_6
    sget-object v1, Landroid/media/MediaScanner;->mID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 611
    invoke-static {}, Landroid/media/MediaScanner;->initID3toSecGenreHashMap()V

    .line 614
    :cond_11
    sget-object v1, Landroid/media/MediaScanner;->mID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 616
    sget-object v1, Landroid/media/MediaScanner;->mID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #secGenre:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #secGenre:Ljava/lang/String;
    :cond_29
    move-object v1, v0

    .line 619
    goto :goto_5
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5
    .parameter "path"
    .parameter "directories"

    .prologue
    .line 2534
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_11

    .line 2535
    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2536
    const/4 v1, 0x1

    .line 2539
    :goto_d
    return v1

    .line 2534
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2539
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private static initID3toSecGenreHashMap()V
    .registers 4

    .prologue
    .line 596
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    .line 598
    sget-object v1, Landroid/media/MediaScanner;->mID3ToSecGenreMap:Ljava/util/HashMap;

    sget-object v2, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/media/MediaScanner;->ID3_TO_SEC_GENRES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 600
    :cond_1a
    return-void
.end method

.method private initialize(Ljava/lang/String;)V
    .registers 5
    .parameter "volumeName"

    .prologue
    const/4 v2, 0x1

    .line 2863
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2865
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 2866
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 2867
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 2868
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 2869
    invoke-static {p1}, Landroid/provider/MediaStore$VideoCallImages$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoCallImagesUri:Landroid/net/Uri;

    .line 2871
    invoke-static {p1}, Landroid/provider/MediaStore$AppPackage$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAppPackageUri:Landroid/net/Uri;

    .line 2874
    const-string v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 2876
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 2877
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 2878
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    .line 2879
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mGenresUri:Landroid/net/Uri;

    .line 2880
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 2882
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2883
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 2886
    :cond_5b
    return-void
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 3102
    const/4 v10, 0x0

    .line 3103
    .local v10, result:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 3104
    .local v8, end1:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 3106
    .local v9, end2:I
    :goto_9
    if-lez v8, :cond_43

    if-lez v9, :cond_43

    .line 3107
    const/16 v0, 0x2f

    const/4 v1, 0x1

    sub-int v1, v8, v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 3108
    .local v11, slash1:I
    const/16 v0, 0x2f

    const/4 v1, 0x1

    sub-int v1, v9, v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 3109
    .local v12, slash2:I
    const/16 v0, 0x5c

    const/4 v1, 0x1

    sub-int v1, v8, v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 3110
    .local v6, backSlash1:I
    const/16 v0, 0x5c

    const/4 v1, 0x1

    sub-int v1, v9, v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 3111
    .local v7, backSlash2:I
    if-le v11, v6, :cond_44

    move v2, v11

    .line 3112
    .local v2, start1:I
    :goto_34
    if-le v12, v7, :cond_46

    move v4, v12

    .line 3113
    .local v4, start2:I
    :goto_37
    if-gez v2, :cond_48

    const/4 v2, 0x0

    .line 3114
    :goto_3a
    if-gez v4, :cond_4b

    const/4 v4, 0x0

    .line 3115
    :goto_3d
    sub-int v5, v8, v2

    .line 3116
    .local v5, length:I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_4e

    .line 3124
    .end local v2           #start1:I
    .end local v4           #start2:I
    .end local v5           #length:I
    .end local v6           #backSlash1:I
    .end local v7           #backSlash2:I
    .end local v11           #slash1:I
    .end local v12           #slash2:I
    :cond_43
    return v10

    .restart local v6       #backSlash1:I
    .restart local v7       #backSlash2:I
    .restart local v11       #slash1:I
    .restart local v12       #slash2:I
    :cond_44
    move v2, v6

    .line 3111
    goto :goto_34

    .restart local v2       #start1:I
    :cond_46
    move v4, v7

    .line 3112
    goto :goto_37

    .line 3113
    .restart local v4       #start2:I
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 3114
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 3117
    .restart local v5       #length:I
    :cond_4e
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 3118
    add-int/lit8 v10, v10, 0x1

    .line 3119
    const/4 v0, 0x1

    sub-int v8, v2, v0

    .line 3120
    const/4 v0, 0x1

    sub-int v9, v4, v0

    .line 3122
    goto :goto_9
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method public static native notifyUnmount(Ljava/lang/String;)V
.end method

.method private postscan([Ljava/lang/String;)V
    .registers 24
    .parameter "directories"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2675
    const-string v18, "MediaScanner"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "postscan enter: directories - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, p1, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    const/4 v5, 0x0

    .line 2685
    .local v5, bIsSkipExternalSD:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2686
    .local v11, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    const/4 v14, 0x0

    .line 2687
    .local v14, needScanThumbnails:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mExternalSDCardRemoval:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3d

    .line 2688
    const-string v18, "MediaScanner"

    const-string v19, "mExternalSDCardRemoval is true. set bIsSkipExternalSD true"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    const/4 v5, 0x1

    .line 2692
    :cond_3d
    const/4 v7, 0x0

    .line 2693
    .local v7, dbAccessor:Landroid/content/IContentProviderDBAccess;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/content/IContentProviderDBAccess;

    move/from16 v18, v0

    if-eqz v18, :cond_53

    .line 2694
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v7, v0

    .end local v7           #dbAccessor:Landroid/content/IContentProviderDBAccess;
    check-cast v7, Landroid/content/IContentProviderDBAccess;

    .line 2697
    .restart local v7       #dbAccessor:Landroid/content/IContentProviderDBAccess;
    :cond_53
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2698
    .local v12, mFileToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 2701
    invoke-interface {v7}, Landroid/content/IContentProviderDBAccess;->getMediaDBSynchronizedObject()Ljava/lang/Object;

    move-result-object v6

    .line 2702
    .local v6, databaseSyncObject:Ljava/lang/Object;
    monitor-enter v6

    .line 2705
    if-eqz v7, :cond_76

    .line 2706
    :try_start_62
    const-string v18, "external"

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/content/IContentProviderDBAccess;->beginDBTransaction(Ljava/lang/String;)V

    .line 2707
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v7

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2710
    :cond_76
    const-string v18, "MediaScanner"

    const-string/jumbo v19, "start checking FileCacheEntry"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    const/16 v18, 0x1

    move-object v0, v7

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/content/IContentProviderDBAccess;->setIsPostScanningStage(Z)V

    .line 2716
    :cond_86
    :goto_86
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_db

    .line 2717
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaScanner$FileCacheEntry;

    .line 2718
    .local v8, entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v15, v8, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 2721
    .local v15, path:Ljava/lang/String;
    sget-boolean v18, Landroid/media/MediaScanner;->bIsShuttingDown:Z

    if-eqz v18, :cond_b2

    .line 2722
    const-string v18, "MediaScanner"

    const-string v19, "Device is shutting down!! return postscan. Do not need to call MediaProvider.delete()"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_62 .. :try_end_9f} :catchall_188

    .line 2833
    if-eqz v7, :cond_b0

    .line 2834
    const/16 v18, 0x0

    const/16 v19, 0x1

    :try_start_a5
    move-object v0, v7

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2835
    invoke-interface {v7}, Landroid/content/IContentProviderDBAccess;->endDBTransaction()V

    :cond_b0
    monitor-exit v6
    :try_end_b1
    .catchall {:try_start_a5 .. :try_end_b1} :catchall_19b

    .line 2860
    .end local v8           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v15           #path:Ljava/lang/String;
    :goto_b1
    return-void

    .line 2731
    .restart local v8       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v15       #path:Ljava/lang/String;
    :cond_b2
    if-nez v5, :cond_15d

    :try_start_b4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move/from16 v18, v0

    sget v19, Landroid/media/MediaScanner;->generation:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_15d

    .line 2732
    sget-object v18, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    const/16 v19, 0x0

    aget-object v19, p1, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15c

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15c

    .line 2824
    .end local v8           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v15           #path:Ljava/lang/String;
    :cond_db
    const/16 v18, 0x0

    move-object v0, v7

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/content/IContentProviderDBAccess;->setIsPostScanningStage(Z)V

    .line 2828
    const-string v18, "MediaScanner"

    const-string v19, "end checking FileCacheEntry"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    if-eqz v7, :cond_ef

    .line 2830
    invoke-interface {v7}, Landroid/content/IContentProviderDBAccess;->setDBTransactionSuccessful()V
    :try_end_ef
    .catchall {:try_start_b4 .. :try_end_ef} :catchall_188

    .line 2833
    :cond_ef
    if-eqz v7, :cond_100

    .line 2834
    const/16 v18, 0x0

    const/16 v19, 0x1

    :try_start_f5
    move-object v0, v7

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2835
    invoke-interface {v7}, Landroid/content/IContentProviderDBAccess;->endDBTransaction()V

    .line 2841
    :cond_100
    monitor-exit v6
    :try_end_101
    .catchall {:try_start_f5 .. :try_end_101} :catchall_19b

    .line 2844
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10c

    .line 2845
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 2848
    :cond_10c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    move/from16 v18, v0

    if-eqz v18, :cond_116

    if-eqz v14, :cond_132

    :cond_116
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    const-string v19, "external"

    invoke-static/range {v19 .. v19}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_132

    .line 2849
    const-string v18, "MediaScanner"

    const-string v19, "call pruneDeadThumbnailFils()"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2850
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 2854
    :cond_132
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mGenreCache:Ljava/util/HashMap;

    .line 2855
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2856
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 2857
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 2859
    const-string v18, "MediaScanner"

    const-string/jumbo v19, "postscan return"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b1

    .line 2735
    .restart local v8       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v15       #path:Ljava/lang/String;
    :cond_15c
    const/4 v5, 0x1

    .line 2740
    :cond_15d
    if-eqz v5, :cond_19e

    :try_start_15f
    sget-object v18, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_19e

    .line 2742
    const-string v18, "MediaScanner"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "postscan : skip this path - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_186
    .catchall {:try_start_15f .. :try_end_186} :catchall_188

    goto/16 :goto_86

    .line 2833
    .end local v8           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v15           #path:Ljava/lang/String;
    :catchall_188
    move-exception v18

    if-eqz v7, :cond_19a

    .line 2834
    const/16 v19, 0x0

    const/16 v20, 0x1

    :try_start_18f
    move-object v0, v7

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2835
    invoke-interface {v7}, Landroid/content/IContentProviderDBAccess;->endDBTransaction()V

    :cond_19a
    throw v18

    .line 2841
    :catchall_19b
    move-exception v18

    monitor-exit v6
    :try_end_19d
    .catchall {:try_start_18f .. :try_end_19d} :catchall_19b

    throw v18

    .line 2750
    .restart local v8       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v15       #path:Ljava/lang/String;
    :cond_19e
    const/4 v9, 0x0

    .line 2752
    .local v9, fileMissing:Z
    :try_start_19f
    move-object v0, v8

    iget-boolean v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    move/from16 v18, v0

    if-nez v18, :cond_1d3

    .line 2753
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_22c

    .line 2762
    invoke-static {v15}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v13

    .line 2763
    .local v13, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v13, :cond_224

    const/16 v18, 0x0

    move/from16 v10, v18

    .line 2764
    .local v10, fileType:I
    :goto_1bb
    sget-object v18, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1d2

    invoke-static {}, Landroid/os/Environment;->getExternalMemoryStatus()Z

    move-result v18

    if-nez v18, :cond_1d2

    invoke-static {v10}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v18

    if-nez v18, :cond_1d3

    .line 2767
    :cond_1d2
    const/4 v9, 0x1

    .line 2781
    .end local v10           #fileType:I
    .end local v13           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_1d3
    :goto_1d3
    if-eqz v9, :cond_86

    .line 2785
    invoke-static {v15}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v13

    .line 2786
    .restart local v13       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v13, :cond_23c

    const/16 v18, 0x0

    move/from16 v10, v18

    .line 2788
    .restart local v10       #fileType:I
    :goto_1df
    invoke-static {v10}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v18

    if-eqz v18, :cond_244

    .line 2789
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 2790
    .local v17, values:Landroid/content/ContentValues;
    const-string v18, "_data"

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2791
    const-string v18, "date_modified"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2792
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object v0, v8

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_86

    .line 2763
    .end local v10           #fileType:I
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_224
    move-object v0, v13

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v18, v0

    move/from16 v10, v18

    goto :goto_1bb

    .line 2774
    .end local v13           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_22c
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2775
    .local v16, testFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1d3

    .line 2776
    const/4 v9, 0x1

    goto :goto_1d3

    .line 2786
    .end local v16           #testFile:Ljava/io/File;
    .restart local v13       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_23c
    move-object v0, v13

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v18, v0

    move/from16 v10, v18

    goto :goto_1df

    .line 2796
    .restart local v10       #fileType:I
    :cond_244
    invoke-static {v10}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v18

    if-eqz v18, :cond_26a

    .line 2798
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v18, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object v0, v8

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v18 .. v21}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2799
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_86

    .line 2800
    :cond_26a
    invoke-static {v10}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v18

    if-eqz v18, :cond_28e

    .line 2805
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v18, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object v0, v8

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v18 .. v21}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2807
    const/4 v14, 0x1

    goto/16 :goto_86

    .line 2813
    :cond_28e
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 2814
    .restart local v17       #values:Landroid/content/ContentValues;
    const-string v18, "_data"

    const-string v19, ""

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2815
    const-string v18, "date_modified"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2816
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v18, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object v0, v8

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2819
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v18, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    move-object v0, v8

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v18 .. v21}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2820
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_2e8
    .catchall {:try_start_19f .. :try_end_2e8} :catchall_188

    goto/16 :goto_86
.end method

.method private prescan(Ljava/lang/String;)V
    .registers 30
    .parameter "Path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2207
    const-string v3, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prescan enter: path - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    const/16 v21, 0x0

    .line 2209
    .local v21, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 2210
    .local v6, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2213
    .local v7, selectionArgs:[Ljava/lang/String;
    const/16 v23, 0x0

    .line 2217
    .local v23, isFile:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    if-nez v3, :cond_cc

    .line 2218
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 2222
    :goto_33
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    move-object v3, v0

    if-nez v3, :cond_d6

    .line 2223
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2231
    :goto_44
    if-eqz p1, :cond_61

    .line 2232
    :try_start_46
    new-instance v3, Ljava/io/File;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v23

    .line 2233
    if-eqz v23, :cond_e0

    .line 2234
    const-string v6, "_data=?"

    .line 2235
    const/4 v3, 0x1

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/4 v3, 0x0

    aput-object p1, v27, v3

    .end local v7           #selectionArgs:[Ljava/lang/String;
    .local v27, selectionArgs:[Ljava/lang/String;
    move-object/from16 v7, v27

    .line 2240
    .end local v27           #selectionArgs:[Ljava/lang/String;
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    :cond_61
    :goto_61
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/media/MediaScanner;->AUDIO_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_71
    .catchall {:try_start_46 .. :try_end_71} :catchall_c5

    move-result-object v21

    .line 2242
    if-eqz v21, :cond_117

    .line 2244
    :cond_74
    :goto_74
    :try_start_74
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_112

    .line 2245
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2246
    .local v10, rowId:J
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2247
    .local v12, path:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2252
    .local v13, lastModified:J
    const-string v3, "/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 2253
    move-object/from16 v24, v12

    .line 2254
    .local v24, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_a7

    .line 2255
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 2257
    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bd
    .catchall {:try_start_74 .. :try_end_bd} :catchall_be

    goto :goto_74

    .line 2262
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v24           #key:Ljava/lang/String;
    :catchall_be
    move-exception v3

    :try_start_bf
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2263
    const/16 v21, 0x0

    throw v3
    :try_end_c5
    .catchall {:try_start_bf .. :try_end_c5} :catchall_c5

    .line 2525
    :catchall_c5
    move-exception v3

    if-eqz v21, :cond_cb

    .line 2526
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_cb
    throw v3

    .line 2220
    :cond_cc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_33

    .line 2225
    :cond_d6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_44

    .line 2237
    :cond_e0
    :try_start_e0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10f

    const-string v4, ""

    :goto_ff
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_61

    :cond_10f
    const-string v4, "/"

    goto :goto_ff

    .line 2262
    :cond_112
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2263
    const/16 v21, 0x0

    .line 2268
    :cond_117
    if-eqz p1, :cond_1b3

    .line 2269
    if-eqz v23, :cond_181

    .line 2270
    const-string v6, "_data=?"

    .line 2277
    :goto_11d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/media/MediaScanner;->VIDEO_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12d
    .catchall {:try_start_e0 .. :try_end_12d} :catchall_c5

    move-result-object v21

    .line 2279
    if-eqz v21, :cond_1bb

    .line 2281
    :cond_130
    :goto_130
    :try_start_130
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1b6

    .line 2282
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2283
    .restart local v10       #rowId:J
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2284
    .restart local v12       #path:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2289
    .restart local v13       #lastModified:J
    const-string v3, "/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_130

    .line 2290
    move-object/from16 v24, v12

    .line 2291
    .restart local v24       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_163

    .line 2292
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 2294
    :cond_163
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_179
    .catchall {:try_start_130 .. :try_end_179} :catchall_17a

    goto :goto_130

    .line 2299
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v24           #key:Ljava/lang/String;
    :catchall_17a
    move-exception v3

    :try_start_17b
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2300
    const/16 v21, 0x0

    throw v3

    .line 2272
    :cond_181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b0

    const-string v4, ""

    :goto_1a0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_11d

    :cond_1b0
    const-string v4, "/"

    goto :goto_1a0

    .line 2275
    :cond_1b3
    const/4 v6, 0x0

    goto/16 :goto_11d

    .line 2299
    :cond_1b6
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2300
    const/16 v21, 0x0

    .line 2305
    :cond_1bb
    if-eqz p1, :cond_221

    .line 2306
    const-string v6, "_data=?"

    .line 2313
    :goto_1bf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAppPackageUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    sget-object v17, Landroid/media/MediaScanner;->APP_PACKAGE_PROJECTION:[Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v15 .. v20}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d5
    .catchall {:try_start_17b .. :try_end_1d5} :catchall_c5

    move-result-object v21

    .line 2315
    if-eqz v21, :cond_228

    .line 2317
    :goto_1d8
    :try_start_1d8
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_223

    .line 2318
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2319
    .restart local v10       #rowId:J
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2320
    .restart local v12       #path:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2322
    .restart local v13       #lastModified:J
    move-object/from16 v24, v12

    .line 2323
    .restart local v24       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_203

    .line 2324
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 2326
    :cond_203
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mAppPackageUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_219
    .catchall {:try_start_1d8 .. :try_end_219} :catchall_21a

    goto :goto_1d8

    .line 2330
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v24           #key:Ljava/lang/String;
    :catchall_21a
    move-exception v3

    :try_start_21b
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2331
    const/16 v21, 0x0

    throw v3

    .line 2308
    :cond_221
    const/4 v6, 0x0

    goto :goto_1bf

    .line 2330
    :cond_223
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2331
    const/16 v21, 0x0

    .line 2337
    :cond_228
    if-eqz p1, :cond_2e1

    .line 2338
    if-eqz v23, :cond_2af

    .line 2339
    const-string v6, "_data=?"

    .line 2346
    :goto_22e
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 2347
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/media/MediaScanner;->IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_244
    .catchall {:try_start_21b .. :try_end_244} :catchall_c5

    move-result-object v21

    .line 2349
    if-eqz v21, :cond_365

    .line 2375
    const/16 v25, 0x0

    .line 2376
    .local v25, mDbEntryToDelete:[J
    const/16 v26, 0x0

    .line 2378
    .local v26, numDbEntryToDelete:I
    :try_start_24b
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 2379
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    move v3, v0

    move v0, v3

    new-array v0, v0, [J

    move-object/from16 v25, v0

    .line 2380
    :cond_25e
    :goto_25e
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2e4

    .line 2381
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2382
    .restart local v10       #rowId:J
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2383
    .restart local v12       #path:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2396
    .restart local v13       #lastModified:J
    const-string v3, "/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25e

    .line 2397
    move-object/from16 v24, v12

    .line 2398
    .restart local v24       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_291

    .line 2399
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 2401
    :cond_291
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a7
    .catchall {:try_start_24b .. :try_end_2a7} :catchall_2a8

    goto :goto_25e

    .line 2419
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v24           #key:Ljava/lang/String;
    :catchall_2a8
    move-exception v3

    :try_start_2a9
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2420
    const/16 v21, 0x0

    throw v3

    .line 2341
    .end local v25           #mDbEntryToDelete:[J
    .end local v26           #numDbEntryToDelete:I
    :cond_2af
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2de

    const-string v4, ""

    :goto_2ce
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_22e

    :cond_2de
    const-string v4, "/"
    :try_end_2e0
    .catchall {:try_start_2a9 .. :try_end_2e0} :catchall_c5

    goto :goto_2ce

    .line 2344
    :cond_2e1
    const/4 v6, 0x0

    goto/16 :goto_22e

    .line 2415
    .restart local v25       #mDbEntryToDelete:[J
    .restart local v26       #numDbEntryToDelete:I
    :cond_2e4
    if-lez v26, :cond_301

    :try_start_2e6
    const-string v3, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Be careful if the code ends up here!!!  mDbEntryToDelete : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_301
    .catchall {:try_start_2e6 .. :try_end_301} :catchall_2a8

    .line 2419
    :cond_301
    :try_start_301
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2420
    const/16 v21, 0x0

    .line 2424
    if-lez v26, :cond_365

    .line 2425
    const/16 v22, 0x0

    .line 2426
    .local v22, dbAccessor:Landroid/content/IContentProviderDBAccess;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    instance-of v3, v3, Landroid/content/IContentProviderDBAccess;

    if-eqz v3, :cond_31b

    .line 2427
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v22, v0

    .end local v22           #dbAccessor:Landroid/content/IContentProviderDBAccess;
    check-cast v22, Landroid/content/IContentProviderDBAccess;
    :try_end_31b
    .catchall {:try_start_301 .. :try_end_31b} :catchall_c5

    .line 2430
    .restart local v22       #dbAccessor:Landroid/content/IContentProviderDBAccess;
    :cond_31b
    if-eqz v22, :cond_365

    .line 2432
    :try_start_31d
    const-string v3, "external"

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/content/IContentProviderDBAccess;->beginDBTransaction(Ljava/lang/String;)V

    .line 2433
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2434
    :goto_32e
    if-lez v26, :cond_356

    .line 2435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object v4, v0

    add-int/lit8 v26, v26, -0x1

    aget-wide v8, v25, v26

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface {v3, v4, v5, v8}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_347
    .catchall {:try_start_31d .. :try_end_347} :catchall_348

    goto :goto_32e

    .line 2439
    :catchall_348
    move-exception v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_34b
    move-object/from16 v0, v22

    move v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2440
    invoke-interface/range {v22 .. v22}, Landroid/content/IContentProviderDBAccess;->endDBTransaction()V

    throw v3
    :try_end_356
    .catchall {:try_start_34b .. :try_end_356} :catchall_c5

    .line 2437
    :cond_356
    :try_start_356
    invoke-interface/range {v22 .. v22}, Landroid/content/IContentProviderDBAccess;->setDBTransactionSuccessful()V
    :try_end_359
    .catchall {:try_start_356 .. :try_end_359} :catchall_348

    .line 2439
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_35b
    move-object/from16 v0, v22

    move v1, v3

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProviderDBAccess;->modifyDBCleanupTrigger(IZ)V

    .line 2440
    invoke-interface/range {v22 .. v22}, Landroid/content/IContentProviderDBAccess;->endDBTransaction()V

    .line 2452
    .end local v22           #dbAccessor:Landroid/content/IContentProviderDBAccess;
    .end local v25           #mDbEntryToDelete:[J
    .end local v26           #numDbEntryToDelete:I
    :cond_365
    if-eqz p1, :cond_3f9

    .line 2453
    if-eqz v23, :cond_3c7

    .line 2454
    const-string v6, "_data=?"

    .line 2461
    :goto_36b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mVideoCallImagesUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/media/MediaScanner;->VIDEOCALL_IMAGES_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_37b
    .catchall {:try_start_35b .. :try_end_37b} :catchall_c5

    move-result-object v21

    .line 2463
    if-eqz v21, :cond_401

    .line 2465
    :goto_37e
    :try_start_37e
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3fc

    .line 2466
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2467
    .restart local v10       #rowId:J
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2468
    .restart local v12       #path:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2470
    .restart local v13       #lastModified:J
    move-object/from16 v24, v12

    .line 2471
    .restart local v24       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_3a9

    .line 2472
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 2474
    :cond_3a9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mVideoCallImagesUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3bf
    .catchall {:try_start_37e .. :try_end_3bf} :catchall_3c0

    goto :goto_37e

    .line 2478
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v24           #key:Ljava/lang/String;
    :catchall_3c0
    move-exception v3

    :try_start_3c1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2479
    const/16 v21, 0x0

    throw v3

    .line 2456
    :cond_3c7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f6

    const-string v4, ""

    :goto_3e6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_36b

    :cond_3f6
    const-string v4, "/"

    goto :goto_3e6

    .line 2459
    :cond_3f9
    const/4 v6, 0x0

    goto/16 :goto_36b

    .line 2478
    :cond_3fc
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2479
    const/16 v21, 0x0

    .line 2487
    :cond_401
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    move v3, v0

    if-eqz v3, :cond_4ac

    .line 2489
    if-eqz p1, :cond_4a4

    .line 2490
    if-eqz v23, :cond_472

    .line 2491
    const-string v6, "_data=?"

    .line 2498
    :goto_40e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/media/MediaScanner;->PLAYLISTS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_41e
    .catchall {:try_start_3c1 .. :try_end_41e} :catchall_c5

    move-result-object v21

    .line 2500
    if-eqz v21, :cond_4ac

    .line 2502
    :cond_421
    :goto_421
    :try_start_421
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4a7

    .line 2503
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2505
    .restart local v12       #path:Ljava/lang/String;
    if-eqz v12, :cond_421

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_421

    .line 2506
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2507
    .restart local v10       #rowId:J
    const/4 v3, 0x2

    move-object/from16 v0, v21

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2509
    .restart local v13       #lastModified:J
    move-object/from16 v24, v12

    .line 2510
    .restart local v24       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_454

    .line 2511
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    .line 2513
    :cond_454
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;J)V

    move-object v0, v3

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46a
    .catchall {:try_start_421 .. :try_end_46a} :catchall_46b

    goto :goto_421

    .line 2518
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v24           #key:Ljava/lang/String;
    :catchall_46b
    move-exception v3

    :try_start_46c
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2519
    const/16 v21, 0x0

    throw v3

    .line 2493
    :cond_472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a1

    const-string v4, ""

    :goto_491
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_40e

    :cond_4a1
    const-string v4, "/"

    goto :goto_491

    .line 2496
    :cond_4a4
    const/4 v6, 0x0

    goto/16 :goto_40e

    .line 2518
    :cond_4a7
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_4aa
    .catchall {:try_start_46c .. :try_end_4aa} :catchall_c5

    .line 2519
    const/16 v21, 0x0

    .line 2525
    :cond_4ac
    if-eqz v21, :cond_4b1

    .line 2526
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 2530
    :cond_4b1
    const-string v3, "MediaScanner"

    const-string/jumbo v4, "prescan return"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)V
    .registers 27
    .parameter "filePath"
    .parameter "prescanFiles"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2136
    const/16 v22, 0x0

    .line 2137
    .local v22, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 2138
    .local v6, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2140
    .local v7, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    if-nez v3, :cond_9e

    .line 2141
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 2145
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    move-object v3, v0

    if-nez v3, :cond_a8

    .line 2146
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 2151
    :goto_26
    if-eqz p1, :cond_30

    .line 2153
    const-string v6, "_data=?"

    .line 2154
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    .end local v7           #selectionArgs:[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v7, v3

    .line 2159
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    :cond_30
    if-eqz p2, :cond_b7

    .line 2162
    :try_start_32
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 2165
    if-eqz v22, :cond_b7

    .line 2166
    :cond_45
    :goto_45
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 2167
    const/4 v3, 0x0

    move-object/from16 v0, v22

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2168
    .local v10, rowId:J
    const/4 v3, 0x1

    move-object/from16 v0, v22

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2169
    .local v12, path:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v22

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 2170
    .local v15, format:I
    const/4 v3, 0x3

    move-object/from16 v0, v22

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2175
    .local v13, lastModified:J
    const-string v3, "/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 2176
    move-object/from16 v23, v12

    .line 2177
    .local v23, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v3, v0

    if-eqz v3, :cond_80

    .line 2178
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    .line 2181
    :cond_80
    new-instance v8, Landroid/media/MediaScanner$FileCacheEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    move-object v9, v0

    invoke-direct/range {v8 .. v15}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(Landroid/net/Uri;JLjava/lang/String;JI)V

    .line 2183
    .local v8, entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_96
    .catchall {:try_start_32 .. :try_end_96} :catchall_97

    goto :goto_45

    .line 2192
    .end local v8           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v10           #rowId:J
    .end local v12           #path:Ljava/lang/String;
    .end local v13           #lastModified:J
    .end local v15           #format:I
    .end local v23           #key:Ljava/lang/String;
    :catchall_97
    move-exception v3

    if-eqz v22, :cond_9d

    .line 2193
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_9d
    throw v3

    .line 2143
    :cond_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_15

    .line 2148
    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_26

    .line 2186
    :cond_b2
    :try_start_b2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_97

    .line 2187
    const/16 v22, 0x0

    .line 2192
    :cond_b7
    if-eqz v22, :cond_bc

    .line 2193
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 2198
    :cond_bc
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    sget-object v18, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-interface/range {v16 .. v21}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 2200
    if-eqz v22, :cond_e8

    .line 2201
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 2202
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 2204
    :cond_e8
    return-void
.end method

.method private native processDirectory(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile_Special(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 15
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 3192
    const/4 v8, 0x0

    .line 3194
    .local v8, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3195
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3196
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {v9, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_6f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_57

    .line 3198
    .end local v8           #reader:Ljava/io/BufferedReader;
    .local v9, reader:Ljava/io/BufferedReader;
    :try_start_1d
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 3199
    .local v1, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3200
    .local v5, index:I
    :goto_22
    if-eqz v1, :cond_47

    .line 3202
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_42

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-eq v0, v2, :cond_42

    .line 3203
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3204
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 3205
    add-int/lit8 v5, v5, 0x1

    .line 3207
    :cond_42
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_1d .. :try_end_45} :catchall_7f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_45} :catch_82

    move-result-object v1

    goto :goto_22

    :cond_47
    move-object v8, v9

    .line 3214
    .end local v1           #line:Ljava/lang/String;
    .end local v5           #index:I
    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_48
    if-eqz v8, :cond_4d

    .line 3215
    :try_start_4a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    .line 3220
    .end local v7           #f:Ljava/io/File;
    :cond_4d
    :goto_4d
    return-void

    .line 3216
    .restart local v7       #f:Ljava/io/File;
    :catch_4e
    move-exception v6

    .line 3217
    .local v6, e:Ljava/io/IOException;
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 3210
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #f:Ljava/io/File;
    :catch_57
    move-exception v0

    move-object v6, v0

    .line 3211
    .restart local v6       #e:Ljava/io/IOException;
    :goto_59
    :try_start_59
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_6f

    .line 3214
    if-eqz v8, :cond_4d

    .line 3215
    :try_start_62
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_4d

    .line 3216
    :catch_66
    move-exception v6

    .line 3217
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4d

    .line 3213
    .end local v6           #e:Ljava/io/IOException;
    :catchall_6f
    move-exception v0

    .line 3214
    :goto_70
    if-eqz v8, :cond_75

    .line 3215
    :try_start_72
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    .line 3218
    :cond_75
    :goto_75
    throw v0

    .line 3216
    :catch_76
    move-exception v6

    .line 3217
    .restart local v6       #e:Ljava/io/IOException;
    const-string v1, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_75

    .line 3213
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #f:Ljava/io/File;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catchall_7f
    move-exception v0

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_70

    .line 3210
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catch_82
    move-exception v0

    move-object v6, v0

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_59
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileCacheEntry;)V
    .registers 22
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3318
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object v11, v0

    .line 3319
    .local v11, path:Ljava/lang/String;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 3320
    .local v16, values:Landroid/content/ContentValues;
    const/16 v17, 0x2f

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 3321
    .local v7, lastSlash:I
    if-gez v7, :cond_31

    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "bad path "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 3323
    :cond_31
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide v13, v0

    .line 3326
    .local v13, rowId:J
    const-string/jumbo v17, "name"

    invoke-virtual/range {v16 .. v17}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3327
    .local v10, name:Ljava/lang/String;
    if-nez v10, :cond_5e

    .line 3328
    const-string/jumbo v17, "title"

    invoke-virtual/range {v16 .. v17}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3329
    if-nez v10, :cond_5e

    .line 3331
    const/16 v17, 0x2e

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 3332
    .local v6, lastDot:I
    if-gez v6, :cond_d5

    add-int/lit8 v17, v7, 0x1

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v17

    .line 3337
    .end local v6           #lastDot:I
    :cond_5e
    :goto_5e
    const-string/jumbo v17, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3338
    const-string v17, "date_modified"

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3340
    const-wide/16 v17, 0x0

    cmp-long v17, v13, v17

    if-nez v17, :cond_e3

    .line 3341
    const-string v17, "_data"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 3343
    .local v15, uri:Landroid/net/Uri;
    invoke-static {v15}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 3344
    const-string/jumbo v17, "members"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 3354
    .local v9, membersUri:Landroid/net/Uri;
    :goto_ac
    const/16 v17, 0x0

    add-int/lit8 v18, v7, 0x1

    move-object v0, v11

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 3355
    .local v12, playListDirectory:Ljava/lang/String;
    invoke-static {v11}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v8

    .line 3356
    .local v8, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v8, :cond_125

    const/16 v17, 0x0

    move/from16 v5, v17

    .line 3358
    .local v5, fileType:I
    :goto_c3
    const/16 v17, 0x29

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_12d

    .line 3359
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move-object v3, v9

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 3365
    :cond_d4
    :goto_d4
    return-void

    .line 3332
    .end local v5           #fileType:I
    .end local v8           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v9           #membersUri:Landroid/net/Uri;
    .end local v12           #playListDirectory:Ljava/lang/String;
    .end local v15           #uri:Landroid/net/Uri;
    .restart local v6       #lastDot:I
    :cond_d5
    add-int/lit8 v17, v7, 0x1

    move-object v0, v11

    move/from16 v1, v17

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v17

    goto/16 :goto_5e

    .line 3346
    .end local v6           #lastDot:I
    :cond_e3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide v1, v13

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 3347
    .restart local v15       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3350
    const-string/jumbo v17, "members"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 3351
    .restart local v9       #membersUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object v1, v9

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_ac

    .line 3356
    .restart local v8       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v12       #playListDirectory:Ljava/lang/String;
    :cond_125
    move-object v0, v8

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v17, v0

    move/from16 v5, v17

    goto :goto_c3

    .line 3360
    .restart local v5       #fileType:I
    :cond_12d
    const/16 v17, 0x2a

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_13f

    .line 3361
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move-object v3, v9

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_d4

    .line 3362
    :cond_13f
    const/16 v17, 0x2b

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_d4

    .line 3363
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_d4
.end method

.method private processPlayLists()V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 3369
    .local v14, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_9
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_187

    .line 3370
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/MediaScanner$FileCacheEntry;

    .line 3371
    .local v12, entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object v0, v12

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 3374
    .local v19, path:Ljava/lang/String;
    iget-boolean v5, v12, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-eqz v5, :cond_9

    .line 3375
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 3376
    .local v24, values:Landroid/content/ContentValues;
    const/16 v5, 0x2f

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 3377
    .local v16, lastSlash:I
    if-gez v16, :cond_4a

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3379
    :cond_4a
    move-object v0, v12

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v21, v0

    .line 3380
    .local v21, rowId:J
    const-wide/16 v7, 0x0

    cmp-long v5, v21, v7

    if-nez v5, :cond_114

    .line 3383
    const/16 v5, 0x2e

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 3384
    .local v15, lastDot:I
    if-gez v15, :cond_106

    add-int/lit8 v5, v16, 0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    .line 3385
    .local v18, name:Ljava/lang/String;
    :goto_6b
    const-string/jumbo v5, "name"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3386
    const-string v5, "_data"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3387
    const-string v5, "date_modified"

    iget-wide v7, v12, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    .line 3389
    .local v23, uri:Landroid/net/Uri;
    invoke-static/range {v23 .. v23}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v21

    .line 3390
    const-string/jumbo v5, "members"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 3403
    .end local v15           #lastDot:I
    .end local v18           #name:Ljava/lang/String;
    .local v6, membersUri:Landroid/net/Uri;
    :goto_af
    const/4 v5, 0x0

    add-int/lit8 v7, v16, 0x1

    move-object/from16 v0, v19

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 3404
    .local v20, playListDirectory:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v17

    .line 3405
    .local v17, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v17, :cond_156

    const/4 v5, 0x0

    move v13, v5

    .line 3407
    .local v13, fileType:I
    :goto_c2
    const/16 v5, 0x29

    if-ne v13, v5, :cond_15e

    .line 3408
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v6

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 3414
    :cond_d2
    :goto_d2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    sget-object v7, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3417
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_e8

    :try_start_e2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_ff

    .line 3418
    :cond_e8
    const-string v5, "MediaScanner"

    const-string/jumbo v6, "playlist is empty - deleting"

    .end local v6           #membersUri:Landroid/net/Uri;
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_e2 .. :try_end_ff} :catchall_180

    .line 3422
    :cond_ff
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9

    .line 3384
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v13           #fileType:I
    .end local v17           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v20           #playListDirectory:Ljava/lang/String;
    .end local v23           #uri:Landroid/net/Uri;
    .restart local v15       #lastDot:I
    :cond_106
    add-int/lit8 v5, v16, 0x1

    move-object/from16 v0, v19

    move v1, v5

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    goto/16 :goto_6b

    .line 3392
    .end local v15           #lastDot:I
    :cond_114
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 3395
    .restart local v23       #uri:Landroid/net/Uri;
    const-string v5, "date_modified"

    iget-wide v7, v12, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v6

    move-object v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3399
    const-string/jumbo v5, "members"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 3400
    .restart local v6       #membersUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_af

    .line 3405
    .restart local v17       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v20       #playListDirectory:Ljava/lang/String;
    :cond_156
    move-object/from16 v0, v17

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move v5, v0

    move v13, v5

    goto/16 :goto_c2

    .line 3409
    .restart local v13       #fileType:I
    :cond_15e
    const/16 v5, 0x2a

    if-ne v13, v5, :cond_170

    .line 3410
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v6

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_d2

    .line 3411
    :cond_170
    const/16 v5, 0x2b

    if-ne v13, v5, :cond_d2

    .line 3412
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_d2

    .line 3422
    .end local v6           #membersUri:Landroid/net/Uri;
    .restart local v11       #cursor:Landroid/database/Cursor;
    :catchall_180
    move-exception v5

    if-eqz v11, :cond_186

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_186
    throw v5

    .line 3426
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v13           #fileType:I
    .end local v16           #lastSlash:I
    .end local v17           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v19           #path:Ljava/lang/String;
    .end local v20           #playListDirectory:Ljava/lang/String;
    .end local v21           #rowId:J
    .end local v23           #uri:Landroid/net/Uri;
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_187
    return-void
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 17
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 3223
    const/4 v10, 0x0

    .line 3225
    .local v10, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3226
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 3227
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {v11, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_77
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_5f

    .line 3229
    .end local v10           #reader:Ljava/io/BufferedReader;
    .local v11, reader:Ljava/io/BufferedReader;
    :try_start_1d
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 3230
    .local v9, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3231
    .local v5, index:I
    :goto_22
    if-eqz v9, :cond_4f

    .line 3233
    const-string v0, "File"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3234
    const/16 v0, 0x3d

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 3235
    .local v7, equals:I
    if-lez v7, :cond_4a

    .line 3236
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 3237
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 3238
    add-int/lit8 v5, v5, 0x1

    .line 3241
    .end local v7           #equals:I
    :cond_4a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_1d .. :try_end_4d} :catchall_87
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_4d} :catch_8a

    move-result-object v9

    goto :goto_22

    :cond_4f
    move-object v10, v11

    .line 3248
    .end local v5           #index:I
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :cond_50
    if-eqz v10, :cond_55

    .line 3249
    :try_start_52
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    .line 3254
    .end local v8           #f:Ljava/io/File;
    :cond_55
    :goto_55
    return-void

    .line 3250
    .restart local v8       #f:Ljava/io/File;
    :catch_56
    move-exception v6

    .line 3251
    .local v6, e:Ljava/io/IOException;
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 3244
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #f:Ljava/io/File;
    :catch_5f
    move-exception v0

    move-object v6, v0

    .line 3245
    .restart local v6       #e:Ljava/io/IOException;
    :goto_61
    :try_start_61
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_77

    .line 3248
    if-eqz v10, :cond_55

    .line 3249
    :try_start_6a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_55

    .line 3250
    :catch_6e
    move-exception v6

    .line 3251
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    .line 3247
    .end local v6           #e:Ljava/io/IOException;
    :catchall_77
    move-exception v0

    .line 3248
    :goto_78
    if-eqz v10, :cond_7d

    .line 3249
    :try_start_7a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    .line 3252
    :cond_7d
    :goto_7d
    throw v0

    .line 3250
    :catch_7e
    move-exception v6

    .line 3251
    .restart local v6       #e:Ljava/io/IOException;
    const-string v1, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7d

    .line 3247
    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v8       #f:Ljava/io/File;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catchall_87
    move-exception v0

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_78

    .line 3244
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catch_8a
    move-exception v0

    move-object v6, v0

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_61
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 12
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"

    .prologue
    const-string v7, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processWplPlayList()"

    .line 3296
    const/4 v2, 0x0

    .line 3298
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3299
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 3300
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_5f
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_15} :catch_37
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_4b

    .line 3302
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_15
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_6f
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_27} :catch_76
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_27} :catch_72

    move-object v2, v3

    .line 3310
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_28
    if-eqz v2, :cond_2d

    .line 3311
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 3316
    .end local v1           #f:Ljava/io/File;
    :cond_2d
    :goto_2d
    return-void

    .line 3312
    .restart local v1       #f:Ljava/io/File;
    :catch_2e
    move-exception v0

    .line 3313
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 3304
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #f:Ljava/io/File;
    :catch_37
    move-exception v4

    move-object v0, v4

    .line 3305
    .local v0, e:Lorg/xml/sax/SAXException;
    :goto_39
    :try_start_39
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_5f

    .line 3310
    if-eqz v2, :cond_2d

    .line 3311
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_2d

    .line 3312
    :catch_42
    move-exception v0

    .line 3313
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 3306
    .end local v0           #e:Ljava/io/IOException;
    :catch_4b
    move-exception v4

    move-object v0, v4

    .line 3307
    .restart local v0       #e:Ljava/io/IOException;
    :goto_4d
    :try_start_4d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_5f

    .line 3310
    if-eqz v2, :cond_2d

    .line 3311
    :try_start_52
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_2d

    .line 3312
    :catch_56
    move-exception v0

    .line 3313
    const-string v4, "MediaScanner"

    const-string v4, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 3309
    .end local v0           #e:Ljava/io/IOException;
    :catchall_5f
    move-exception v4

    .line 3310
    :goto_60
    if-eqz v2, :cond_65

    .line 3311
    :try_start_62
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    .line 3314
    :cond_65
    :goto_65
    throw v4

    .line 3312
    :catch_66
    move-exception v0

    .line 3313
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_65

    .line 3309
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_6f
    move-exception v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_60

    .line 3306
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_72
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_4d

    .line 3304
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_76
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_39
.end method

.method private pruneDeadThumbnailFiles()V
    .registers 16

    .prologue
    const/4 v2, 0x0

    const-string v4, "/"

    const-string v3, ".thumb"

    const-string v0, "MediaScanner"

    .line 2591
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2592
    .local v10, existingFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2593
    .local v7, directory:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v11

    .line 2594
    .local v11, files:[Ljava/lang/String;
    if-nez v11, :cond_2e

    .line 2595
    new-array v11, v2, [Ljava/lang/String;

    .line 2598
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2599
    .local v8, directorySd:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v12

    .line 2600
    .local v12, filesFromSd:[Ljava/lang/String;
    if-nez v12, :cond_50

    .line 2601
    new-array v12, v2, [Ljava/lang/String;

    .line 2603
    :cond_50
    const/4 v14, 0x0

    .local v14, i:I
    :goto_51
    array-length v0, v11

    if-ge v14, v0, :cond_7d

    .line 2604
    aget-object v0, v11, v14

    const-string v1, ".thumb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 2605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v11, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2606
    .local v13, fullPathString:Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2603
    .end local v13           #fullPathString:Ljava/lang/String;
    :cond_7a
    add-int/lit8 v14, v14, 0x1

    goto :goto_51

    .line 2610
    :cond_7d
    const/4 v14, 0x0

    :goto_7e
    array-length v0, v12

    if-ge v14, v0, :cond_aa

    .line 2611
    aget-object v0, v12, v14

    const-string v1, ".thumb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 2612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v12, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2613
    .restart local v13       #fullPathString:Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2610
    .end local v13           #fullPathString:Ljava/lang/String;
    :cond_a7
    add-int/lit8 v14, v14, 0x1

    goto :goto_7e

    .line 2616
    :cond_aa
    const/4 v6, 0x0

    .line 2618
    .local v6, c:Landroid/database/Cursor;
    :try_start_ab
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2624
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    if-eqz v6, :cond_ed

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 2627
    :cond_df
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2628
    .restart local v13       #fullPathString:Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2629
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_df

    .line 2632
    .end local v13           #fullPathString:Ljava/lang/String;
    :cond_ed
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "files to delete count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catchall {:try_start_ab .. :try_end_121} :catchall_158
    .catch Landroid/os/RemoteException; {:try_start_ab .. :try_end_121} :catch_134

    .line 2639
    if-eqz v6, :cond_126

    .line 2640
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2644
    :cond_126
    :goto_126
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/media/MediaScanner$1;

    invoke-direct {v1, p0, v10}, Landroid/media/MediaScanner$1;-><init>(Landroid/media/MediaScanner;Ljava/util/HashSet;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2672
    return-void

    .line 2635
    :catch_134
    move-exception v0

    move-object v9, v0

    .line 2637
    .local v9, e:Landroid/os/RemoteException;
    :try_start_136
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_152
    .catchall {:try_start_136 .. :try_end_152} :catchall_158

    .line 2639
    if-eqz v6, :cond_126

    .line 2640
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_126

    .line 2639
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_158
    move-exception v0

    if-eqz v6, :cond_15e

    .line 2640
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_15e
    throw v0
.end method

.method private restoreRingtoneValue()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const-string v7, "MediaScanner"

    .line 3010
    iget-object v5, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "ringtone"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3011
    .local v1, existingSettingValue:Ljava/lang/String;
    if-nez v1, :cond_13

    .line 3031
    :goto_12
    return-void

    .line 3012
    :cond_13
    const-string v5, "content://media/external"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 3013
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3014
    .local v3, ringtoneUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3015
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "is_ringtone"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3017
    :try_start_2b
    iget-object v5, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    if-nez v5, :cond_3e

    iget-object v5, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "media"

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 3018
    :cond_3e
    iget-object v5, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v3, v4, v6, v7}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 3019
    .local v2, ret:I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_68

    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ringtone is successfully restored. URI in Settings DB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_2b .. :try_end_65} :catchall_91
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_65} :catch_85

    .line 3024
    :goto_65
    iput-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    goto :goto_12

    .line 3020
    :cond_68
    :try_start_68
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ringtone is not restored. URI in Settings DB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_68 .. :try_end_84} :catchall_91
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_84} :catch_85

    goto :goto_65

    .line 3021
    .end local v2           #ret:I
    :catch_85
    move-exception v5

    move-object v0, v5

    .line 3022
    .local v0, e:Landroid/os/RemoteException;
    :try_start_87
    const-string v5, "MediaScanner"

    const-string v6, "RemoteException in restoreRingtoneValue\'s db.update() method"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_91

    .line 3024
    iput-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    goto :goto_12

    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_91
    move-exception v5

    iput-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    throw v5

    .line 3028
    .end local v3           #ringtoneUri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_95
    const-string v5, "MediaScanner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ringtone Uri is not external. URI in Settings DB : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12
.end method

.method private setDefaultRingtoneFileNames()V
    .registers 2

    .prologue
    .line 749
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 751
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 753
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 755
    return-void
.end method


# virtual methods
.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 3445
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 3446
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 3447
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .registers 22
    .parameter "directories"
    .parameter "volumeName"

    .prologue
    .line 2890
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move v15, v0

    sget v16, Landroid/media/MediaScanner;->generation:I

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_2c

    sget-object v15, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2c

    .line 2891
    const-string v15, "MediaScanner"

    const-string v16, " scanDirectories : another request of scanning /sdcard is received ... do not need to continue"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    :cond_2b
    :goto_2b
    return-void

    .line 2895
    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2896
    .local v12, start:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 2914
    move-object/from16 v0, p1

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_9f

    const/4 v15, 0x0

    aget-object v15, p1, v15

    sget-object v16, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_58

    const/4 v15, 0x0

    aget-object v15, p1, v15

    sget-object v16, Landroid/media/MediaScanner;->EXTERNAL_USB_ROOT:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9f

    .line 2917
    :cond_58
    const/4 v15, 0x0

    aget-object v15, p1, v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;)V

    .line 2923
    :goto_61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2936
    .local v8, prescan:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move v15, v0

    sget v16, Landroid/media/MediaScanner;->generation:I

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_b6

    sget-object v15, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b6

    .line 2937
    const-string v15, "MediaScanner"

    const-string v16, " scanDirectories : another request of scanning /sdcard is received ... do not need to continue"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_90} :catch_91
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_90} :catch_a7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_90} :catch_12a

    goto :goto_2b

    .line 2997
    .end local v8           #prescan:J
    .end local v12           #start:J
    :catch_91
    move-exception v15

    move-object v4, v15

    .line 2999
    .local v4, e:Landroid/database/SQLException;
    const-string v15, "MediaScanner"

    const-string v16, "SQLException in MediaScanner.scan()"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 2919
    .end local v4           #e:Landroid/database/SQLException;
    .restart local v12       #start:J
    :cond_9f
    const/4 v15, 0x0

    :try_start_a0
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;)V
    :try_end_a6
    .catch Landroid/database/SQLException; {:try_start_a0 .. :try_end_a6} :catch_91
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a0 .. :try_end_a6} :catch_a7
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_a6} :catch_12a

    goto :goto_61

    .line 3000
    .end local v12           #start:J
    :catch_a7
    move-exception v15

    move-object v4, v15

    .line 3002
    .local v4, e:Ljava/lang/UnsupportedOperationException;
    const-string v15, "MediaScanner"

    const-string v16, "UnsupportedOperationException in MediaScanner.scan()"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 2941
    .end local v4           #e:Ljava/lang/UnsupportedOperationException;
    .restart local v8       #prescan:J
    .restart local v12       #start:J
    :cond_b6
    :try_start_b6
    const-string v15, "MediaScanner"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "scanDirectories : directories.length="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", directories.length : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v17, p1, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2943
    const/4 v7, 0x0

    .local v7, i:I
    :goto_e3
    move-object/from16 v0, p1

    array-length v0, v0

    move v15, v0

    if-ge v7, v15, :cond_13c

    .line 2944
    aget-object v15, p1, v7

    sget-object v16, Landroid/media/MediaFile;->sFileExtensions:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 2946
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move v15, v0

    sget v16, Landroid/media/MediaScanner;->generation:I

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_139

    sget-object v15, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_139

    .line 2947
    const-string v15, "MediaScanner"

    const-string v16, " scanDirectories : another request of scanning /sdcard is received ... do not need to continue"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_128
    .catch Landroid/database/SQLException; {:try_start_b6 .. :try_end_128} :catch_91
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b6 .. :try_end_128} :catch_a7
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_128} :catch_12a

    goto/16 :goto_2b

    .line 3003
    .end local v7           #i:I
    .end local v8           #prescan:J
    .end local v12           #start:J
    :catch_12a
    move-exception v15

    move-object v4, v15

    .line 3004
    .local v4, e:Landroid/os/RemoteException;
    const-string v15, "MediaScanner"

    const-string v16, "RemoteException in MediaScanner.scan()"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 2943
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v7       #i:I
    .restart local v8       #prescan:J
    .restart local v12       #start:J
    :cond_139
    add-int/lit8 v7, v7, 0x1

    goto :goto_e3

    .line 2954
    :cond_13c
    :try_start_13c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    .line 2955
    .local v14, status:Ljava/lang/String;
    const-string/jumbo v15, "mounted"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16c

    const-string/jumbo v15, "mounted_ro"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16c

    .line 2957
    const-string v15, "MediaScanner"

    const-string/jumbo v16, "scanDirectories : ExternalStorageState[%s]... do not need to postscan"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 2962
    :cond_16c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move v15, v0

    sget v16, Landroid/media/MediaScanner;->generation:I

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_199

    sget-object v15, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_199

    .line 2963
    const-string v15, "MediaScanner"

    const-string v16, " scanDirectories : another request of scanning /sdcard is received ... do not need to continue"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 2967
    :cond_199
    move-object/from16 v0, p1

    array-length v0, v0

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1cb

    const/4 v15, 0x0

    aget-object v15, p1, v15

    sget-object v16, Landroid/media/MediaScanner;->EXTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1cb

    .line 2968
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mExternalSDCardRemoval:Z

    move v15, v0

    if-eqz v15, :cond_1cb

    .line 2969
    const-string v15, "MediaScanner"

    const-string v16, " scanDirectories : external SD card is removed during media scanning... do not need to postscan"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 2974
    :cond_1cb
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2976
    .local v10, scan:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mGeneration:I

    move v15, v0

    sget v16, Landroid/media/MediaScanner;->generation:I

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_1fc

    sget-object v15, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    const/16 v16, 0x0

    aget-object v16, p1, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1fc

    .line 2977
    const-string v15, "MediaScanner"

    const-string v16, " scanDirectories : another request of scanning /mnt/sdcard is received ... do not need to do postscan."

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 2980
    :cond_1fc
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 2981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2984
    .local v5, end:J
    const-string v15, "MediaScanner"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " prescan time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sub-long v17, v8, v12

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "ms\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    const-string v15, "MediaScanner"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "    scan time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sub-long v17, v10, v8

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "ms (metadata parsing time : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner;->mCodecParsingTime:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "ms)\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    const-string v15, "MediaScanner"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "postscan time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sub-long v17, v5, v10

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "ms\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    const-string v15, "MediaScanner"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "   total time: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sub-long v17, v5, v12

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "ms\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    const-wide/16 v15, 0x0

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/MediaScanner;->mCodecParsingTime:J

    .line 2992
    const/4 v15, 0x0

    aget-object v15, p1, v15

    if-eqz v15, :cond_2b

    const/4 v15, 0x0

    aget-object v15, p1, v15

    sget-object v16, Landroid/media/MediaScanner;->INTERNAL_SD_ROOT:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 2993
    const-string v15, "MediaScanner"

    const-string v16, "Restore ringtone value from Settings DB"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->restoreRingtoneValue()V
    :try_end_2ba
    .catch Landroid/database/SQLException; {:try_start_13c .. :try_end_2ba} :catch_91
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_13c .. :try_end_2ba} :catch_a7
    .catch Landroid/os/RemoteException; {:try_start_13c .. :try_end_2ba} :catch_12a

    goto/16 :goto_2b
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 27
    .parameter "path"
    .parameter "volumeName"
    .parameter "objectHandle"
    .parameter "format"

    .prologue
    .line 3049
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 3050
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v19

    .line 3051
    .local v19, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v19, :cond_7f

    const/4 v5, 0x0

    move/from16 v17, v5

    .line 3052
    .local v17, fileType:I
    :goto_10
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3053
    .local v16, file:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v8, v5, v7

    .line 3055
    .local v8, lastModifiedSeconds:J
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v5

    if-nez v5, :cond_91

    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v5

    if-nez v5, :cond_91

    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v5

    if-nez v5, :cond_91

    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v5

    if-nez v5, :cond_91

    .line 3059
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 3060
    .local v20, values:Landroid/content/ContentValues;
    const-string v5, "_size"

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3061
    const-string v5, "date_modified"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3063
    const/4 v5, 0x1

    :try_start_5d
    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v5, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v21, v5

    .line 3064
    .local v21, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "_id=?"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move-object v3, v7

    move-object/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_7e} :catch_87

    .line 3099
    .end local v20           #values:Landroid/content/ContentValues;
    .end local v21           #whereArgs:[Ljava/lang/String;
    :goto_7e
    return-void

    .line 3051
    .end local v8           #lastModifiedSeconds:J
    .end local v16           #file:Ljava/io/File;
    .end local v17           #fileType:I
    :cond_7f
    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move v5, v0

    move/from16 v17, v5

    goto :goto_10

    .line 3066
    .restart local v8       #lastModifiedSeconds:J
    .restart local v16       #file:Ljava/io/File;
    .restart local v17       #fileType:I
    .restart local v20       #values:Landroid/content/ContentValues;
    :catch_87
    move-exception v5

    move-object v14, v5

    .line 3067
    .local v14, e:Landroid/os/RemoteException;
    const-string v5, "MediaScanner"

    const-string v6, "RemoteException in scanMtpFile"

    invoke-static {v5, v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7e

    .line 3072
    .end local v14           #e:Landroid/os/RemoteException;
    .end local v20           #values:Landroid/content/ContentValues;
    :cond_91
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 3074
    :try_start_97
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 3076
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 3078
    move-object/from16 v18, p1

    .line 3079
    .local v18, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    move v5, v0

    if-eqz v5, :cond_b3

    .line 3080
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 3082
    :cond_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/MediaScanner$FileCacheEntry;

    .line 3083
    .local v15, entry:Landroid/media/MediaScanner$FileCacheEntry;
    if-eqz v15, :cond_c9

    .line 3084
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileCacheEntry;)V
    :try_end_c9
    .catchall {:try_start_97 .. :try_end_c9} :catchall_10b
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_c9} :catch_f7

    .line 3097
    .end local v15           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v18           #key:Ljava/lang/String;
    :cond_c9
    :goto_c9
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    goto :goto_7e

    .line 3088
    :cond_d0
    const/4 v5, 0x0

    :try_start_d1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 3091
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object v5, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v10

    const/16 v6, 0x3001

    move/from16 v0, p4

    move v1, v6

    if-ne v0, v1, :cond_108

    const/4 v6, 0x1

    move v12, v6

    :goto_f0
    const/4 v13, 0x1

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v13}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/net/Uri;
    :try_end_f6
    .catchall {:try_start_d1 .. :try_end_f6} :catchall_10b
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_f6} :catch_f7

    goto :goto_c9

    .line 3094
    :catch_f7
    move-exception v5

    move-object v14, v5

    .line 3095
    .restart local v14       #e:Landroid/os/RemoteException;
    :try_start_f9
    const-string v5, "MediaScanner"

    const-string v6, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v5, v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_100
    .catchall {:try_start_f9 .. :try_end_100} :catchall_10b

    .line 3097
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    goto/16 :goto_7e

    .line 3091
    .end local v14           #e:Landroid/os/RemoteException;
    :cond_108
    const/4 v6, 0x0

    move v12, v6

    goto :goto_f0

    .line 3097
    :catchall_10b
    move-exception v5

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    throw v5
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 14
    .parameter "path"
    .parameter "volumeName"
    .parameter "mimeType"

    .prologue
    .line 3036
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 3037
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;)V

    .line 3039
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3041
    .local v9, file:Ljava/io/File;
    iget-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZ)Landroid/net/Uri;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object v0

    .line 3044
    .end local v9           #file:Ljava/io/File;
    :goto_20
    return-object v0

    .line 3042
    :catch_21
    move-exception v0

    move-object v8, v0

    .line 3043
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "MediaScanner"

    const-string v1, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3044
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method
