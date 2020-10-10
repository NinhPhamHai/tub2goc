.class final enum Lch/blinkenlights/android/vanilla/Action;
.super Ljava/lang/Enum;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lch/blinkenlights/android/vanilla/Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lch/blinkenlights/android/vanilla/Action;

.field public static final enum ClearQueue:Lch/blinkenlights/android/vanilla/Action;

.field public static final enum EnqueueAlbum:Lch/blinkenlights/android/vanilla/Action;

.field public static final enum EnqueueArtist:Lch/blinkenlights/android/vanilla/Action;

.field public static final enum EnqueueGenre:Lch/blinkenlights/android/vanilla/Action;

.field public static final enum Library:Lch/blinkenlights/android/vanilla/Action;

.field public static final enum NextAlbum:Lch/blinkenlights/android/vanilla/Action;

.field public static final enum NextSong:Lch/blinkenlights/android/vanilla/Action;

.field public static final enum Nothing:Lch/blinkenlights/android/vanilla/Action;

.field public static final enum PlayPause:Lch/blinkenlights/android/vanilla/Action;

.field public static final enum PreviousAlbum:Lch/blinkenlights/android/vanilla/Action;

.field public static final enum PreviousSong:Lch/blinkenlights/android/vanilla/Action;

.field public static final enum Repeat:Lch/blinkenlights/android/vanilla/Action;

.field public static final enum SeekBackward:Lch/blinkenlights/android/vanilla/Action;

.field public static final enum SeekForward:Lch/blinkenlights/android/vanilla/Action;

.field public static final enum ShowQueue:Lch/blinkenlights/android/vanilla/Action;

.field public static final enum Shuffle:Lch/blinkenlights/android/vanilla/Action;

.field public static final enum ToggleControls:Lch/blinkenlights/android/vanilla/Action;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 34
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const/4 v1, 0x0

    const-string v2, "Nothing"

    invoke-direct {v0, v2, v1}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->Nothing:Lch/blinkenlights/android/vanilla/Action;

    .line 38
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const/4 v2, 0x1

    const-string v3, "Library"

    invoke-direct {v0, v3, v2}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->Library:Lch/blinkenlights/android/vanilla/Action;

    .line 42
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const/4 v3, 0x2

    const-string v4, "PlayPause"

    invoke-direct {v0, v4, v3}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->PlayPause:Lch/blinkenlights/android/vanilla/Action;

    .line 46
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const/4 v4, 0x3

    const-string v5, "NextSong"

    invoke-direct {v0, v5, v4}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->NextSong:Lch/blinkenlights/android/vanilla/Action;

    .line 50
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const/4 v5, 0x4

    const-string v6, "PreviousSong"

    invoke-direct {v0, v6, v5}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->PreviousSong:Lch/blinkenlights/android/vanilla/Action;

    .line 54
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const/4 v6, 0x5

    const-string v7, "NextAlbum"

    invoke-direct {v0, v7, v6}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->NextAlbum:Lch/blinkenlights/android/vanilla/Action;

    .line 58
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const/4 v7, 0x6

    const-string v8, "PreviousAlbum"

    invoke-direct {v0, v8, v7}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->PreviousAlbum:Lch/blinkenlights/android/vanilla/Action;

    .line 62
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const/4 v8, 0x7

    const-string v9, "Repeat"

    invoke-direct {v0, v9, v8}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->Repeat:Lch/blinkenlights/android/vanilla/Action;

    .line 66
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const/16 v9, 0x8

    const-string v10, "Shuffle"

    invoke-direct {v0, v10, v9}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->Shuffle:Lch/blinkenlights/android/vanilla/Action;

    .line 70
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const/16 v10, 0x9

    const-string v11, "EnqueueAlbum"

    invoke-direct {v0, v11, v10}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->EnqueueAlbum:Lch/blinkenlights/android/vanilla/Action;

    .line 74
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const/16 v11, 0xa

    const-string v12, "EnqueueArtist"

    invoke-direct {v0, v12, v11}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->EnqueueArtist:Lch/blinkenlights/android/vanilla/Action;

    .line 78
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const/16 v12, 0xb

    const-string v13, "EnqueueGenre"

    invoke-direct {v0, v13, v12}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->EnqueueGenre:Lch/blinkenlights/android/vanilla/Action;

    .line 82
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const/16 v13, 0xc

    const-string v14, "ClearQueue"

    invoke-direct {v0, v14, v13}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->ClearQueue:Lch/blinkenlights/android/vanilla/Action;

    .line 86
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const/16 v14, 0xd

    const-string v15, "ShowQueue"

    invoke-direct {v0, v15, v14}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->ShowQueue:Lch/blinkenlights/android/vanilla/Action;

    .line 90
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const/16 v15, 0xe

    const-string v14, "ToggleControls"

    invoke-direct {v0, v14, v15}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->ToggleControls:Lch/blinkenlights/android/vanilla/Action;

    .line 94
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const-string v14, "SeekForward"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->SeekForward:Lch/blinkenlights/android/vanilla/Action;

    .line 98
    new-instance v0, Lch/blinkenlights/android/vanilla/Action;

    const-string v14, "SeekBackward"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lch/blinkenlights/android/vanilla/Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->SeekBackward:Lch/blinkenlights/android/vanilla/Action;

    const/16 v0, 0x11

    .line 30
    new-array v0, v0, [Lch/blinkenlights/android/vanilla/Action;

    sget-object v14, Lch/blinkenlights/android/vanilla/Action;->Nothing:Lch/blinkenlights/android/vanilla/Action;

    aput-object v14, v0, v1

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->Library:Lch/blinkenlights/android/vanilla/Action;

    aput-object v1, v0, v2

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->PlayPause:Lch/blinkenlights/android/vanilla/Action;

    aput-object v1, v0, v3

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->NextSong:Lch/blinkenlights/android/vanilla/Action;

    aput-object v1, v0, v4

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->PreviousSong:Lch/blinkenlights/android/vanilla/Action;

    aput-object v1, v0, v5

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->NextAlbum:Lch/blinkenlights/android/vanilla/Action;

    aput-object v1, v0, v6

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->PreviousAlbum:Lch/blinkenlights/android/vanilla/Action;

    aput-object v1, v0, v7

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->Repeat:Lch/blinkenlights/android/vanilla/Action;

    aput-object v1, v0, v8

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->Shuffle:Lch/blinkenlights/android/vanilla/Action;

    aput-object v1, v0, v9

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->EnqueueAlbum:Lch/blinkenlights/android/vanilla/Action;

    aput-object v1, v0, v10

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->EnqueueArtist:Lch/blinkenlights/android/vanilla/Action;

    aput-object v1, v0, v11

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->EnqueueGenre:Lch/blinkenlights/android/vanilla/Action;

    aput-object v1, v0, v12

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->ClearQueue:Lch/blinkenlights/android/vanilla/Action;

    aput-object v1, v0, v13

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->ShowQueue:Lch/blinkenlights/android/vanilla/Action;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->ToggleControls:Lch/blinkenlights/android/vanilla/Action;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->SeekForward:Lch/blinkenlights/android/vanilla/Action;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lch/blinkenlights/android/vanilla/Action;->SeekBackward:Lch/blinkenlights/android/vanilla/Action;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lch/blinkenlights/android/vanilla/Action;->$VALUES:[Lch/blinkenlights/android/vanilla/Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getAction(Landroid/content/SharedPreferences;Ljava/lang/String;Lch/blinkenlights/android/vanilla/Action;)Lch/blinkenlights/android/vanilla/Action;
    .locals 1

    const/4 v0, 0x0

    .line 111
    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    .line 114
    :cond_0
    const-class p1, Lch/blinkenlights/android/vanilla/Action;

    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lch/blinkenlights/android/vanilla/Action;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p2
.end method

.method public static valueOf(Ljava/lang/String;)Lch/blinkenlights/android/vanilla/Action;
    .locals 1

    .line 30
    const-class v0, Lch/blinkenlights/android/vanilla/Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lch/blinkenlights/android/vanilla/Action;

    return-object p0
.end method

.method public static values()[Lch/blinkenlights/android/vanilla/Action;
    .locals 1

    .line 30
    sget-object v0, Lch/blinkenlights/android/vanilla/Action;->$VALUES:[Lch/blinkenlights/android/vanilla/Action;

    invoke-virtual {v0}, [Lch/blinkenlights/android/vanilla/Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/blinkenlights/android/vanilla/Action;

    return-object v0
.end method
