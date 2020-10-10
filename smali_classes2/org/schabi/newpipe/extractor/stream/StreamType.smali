.class public final enum Lorg/schabi/newpipe/extractor/stream/StreamType;
.super Ljava/lang/Enum;
.source "StreamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/schabi/newpipe/extractor/stream/StreamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum FILE:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum NONE:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field public static final enum VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 4
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->NONE:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 5
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const/4 v2, 0x1

    const-string v3, "VIDEO_STREAM"

    invoke-direct {v0, v3, v2}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 6
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const/4 v3, 0x2

    const-string v4, "AUDIO_STREAM"

    invoke-direct {v0, v4, v3}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 7
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const/4 v4, 0x3

    const-string v5, "LIVE_STREAM"

    invoke-direct {v0, v5, v4}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 8
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const/4 v5, 0x4

    const-string v6, "AUDIO_LIVE_STREAM"

    invoke-direct {v0, v6, v5}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 9
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    const/4 v6, 0x5

    const-string v7, "FILE"

    invoke-direct {v0, v7, v6}, Lorg/schabi/newpipe/extractor/stream/StreamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->FILE:Lorg/schabi/newpipe/extractor/stream/StreamType;

    const/4 v0, 0x6

    .line 3
    new-array v0, v0, [Lorg/schabi/newpipe/extractor/stream/StreamType;

    sget-object v7, Lorg/schabi/newpipe/extractor/stream/StreamType;->NONE:Lorg/schabi/newpipe/extractor/stream/StreamType;

    aput-object v7, v0, v1

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->VIDEO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_LIVE_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/StreamType;->FILE:Lorg/schabi/newpipe/extractor/stream/StreamType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->$VALUES:[Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 3
    const-class v0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 3
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->$VALUES:[Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/stream/StreamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method
