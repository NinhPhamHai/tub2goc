.class public Lorg/schabi/newpipe/extractor/utils/Localization;
.super Ljava/lang/Object;
.source "Localization.java"


# instance fields
.field private final country:Ljava/lang/String;

.field private final language:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/Localization;->country:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/utils/Localization;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/Localization;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/Localization;->language:Ljava/lang/String;

    return-object v0
.end method
