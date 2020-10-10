.class public Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
.super Ljava/lang/Object;
.source "ItagItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;
    }
.end annotation


# static fields
.field private static final ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;


# instance fields
.field public avgBitrate:I

.field public fps:I

.field public final id:I

.field public final itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

.field private final mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public resolutionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const/16 v0, 0x2c

    .line 13
    new-array v1, v0, [Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v5, 0x11

    const-string v6, "144p"

    invoke-direct {v2, v5, v3, v4, v6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v7, 0x24

    const-string v8, "240p"

    invoke-direct {v2, v7, v3, v4, v8}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v9, 0x12

    const-string v10, "360p"

    invoke-direct {v2, v9, v3, v4, v10}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v11, 0x22

    invoke-direct {v2, v11, v3, v4, v10}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v12, 0x23

    const-string v13, "480p"

    invoke-direct {v2, v12, v3, v4, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v14, 0x3b

    invoke-direct {v2, v14, v3, v4, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v14, 0x4e

    invoke-direct {v2, v14, v3, v4, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v14, 0x16

    const-string v15, "720p"

    invoke-direct {v2, v14, v3, v4, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v7, 0x25

    const-string v12, "1080p"

    invoke-direct {v2, v7, v3, v4, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v7, 0x26

    invoke-direct {v2, v7, v3, v4, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v7, 0x2b

    invoke-direct {v2, v7, v3, v4, v10}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-direct {v2, v0, v3, v4, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v0, 0xb

    aput-object v2, v1, v0

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0x2d

    invoke-direct {v0, v4, v2, v3, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0x2e

    invoke-direct {v0, v4, v2, v3, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0xab

    const/16 v7, 0x80

    invoke-direct {v0, v4, v2, v3, v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    const/16 v2, 0xe

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0xac

    const/16 v7, 0x100

    invoke-direct {v0, v4, v2, v3, v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    const/16 v2, 0xf

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0x8b

    const/16 v7, 0x30

    invoke-direct {v0, v4, v2, v3, v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    const/16 v2, 0x10

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0x8c

    const/16 v7, 0x80

    invoke-direct {v0, v4, v2, v3, v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    aput-object v0, v1, v5

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0x8d

    const/16 v5, 0x100

    invoke-direct {v0, v4, v2, v3, v5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    aput-object v0, v1, v9

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0xf9

    const/16 v5, 0x32

    invoke-direct {v0, v4, v2, v3, v5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    const/16 v2, 0x13

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0xfa

    const/16 v5, 0x46

    invoke-direct {v0, v4, v2, v3, v5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    const/16 v2, 0x14

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0xfb

    const/16 v5, 0xa0

    invoke-direct {v0, v4, v2, v3, v5}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    const/16 v2, 0x15

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0xa0

    invoke-direct {v0, v4, v2, v3, v6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    aput-object v0, v1, v14

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0x85

    invoke-direct {v0, v4, v2, v3, v8}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v2, 0x17

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0x87

    invoke-direct {v0, v4, v2, v3, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v2, 0x18

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0xd4

    invoke-direct {v0, v4, v2, v3, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v2, 0x19

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v18, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v19, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v17, 0x12a

    const-string v20, "720p60"

    const/16 v21, 0x3c

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0x89

    invoke-direct {v0, v4, v2, v3, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v18, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v19, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v17, 0x12b

    const-string v20, "1080p60"

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v4, "2160p"

    const/16 v5, 0x10a

    invoke-direct {v0, v5, v2, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v5, 0x116

    invoke-direct {v0, v5, v2, v3, v6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v5, 0xf2

    invoke-direct {v0, v5, v2, v3, v8}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v5, 0xf4

    invoke-direct {v0, v5, v2, v3, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v2, 0x20

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v5, 0xf5

    invoke-direct {v0, v5, v2, v3, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v2, 0x21

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v5, 0xf6

    invoke-direct {v0, v5, v2, v3, v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    aput-object v0, v1, v11

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v5, 0xf7

    invoke-direct {v0, v5, v2, v3, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v2, 0x23

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v5, 0xf8

    invoke-direct {v0, v5, v2, v3, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v2, 0x24

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v5, 0x10f

    const-string v6, "1440p"

    invoke-direct {v0, v5, v2, v3, v6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v2, 0x25

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v5, 0x110

    invoke-direct {v0, v5, v2, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v2, 0x26

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v8, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v6, 0x12e

    const-string v9, "720p60"

    const/16 v10, 0x3c

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    const/16 v2, 0x27

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v8, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v6, 0x12f

    const-string v9, "1080p60"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    const/16 v2, 0x28

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v8, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v6, 0x134

    const-string v9, "1440p60"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    const/16 v2, 0x29

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v5, 0x139

    invoke-direct {v0, v5, v2, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    sget-object v5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v6, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v4, 0x13b

    const-string v7, "2160p60"

    const/16 v8, 0x3c

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    sput-object v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;I)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 152
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 156
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 135
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 136
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 137
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 138
    iput p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 152
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 156
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 114
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 115
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 116
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 117
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    const/16 p1, 0x1e

    .line 118
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;I)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 152
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 156
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 127
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 128
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 129
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 130
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    .line 131
    iput p5, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    return-void
.end method

.method public static getItag(I)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 92
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 93
    iget v4, v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not supported"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSupported(I)Z
    .locals 5

    .line 83
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 84
    iget v4, v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    if-ne p0, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public getMediaFormat()Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object v0
.end method
