process.env.NODE_TLS_REJECT_UNAUTHORIZED = 1;

const UserToken = "ODQ4NzYxOTkyOTMxNTczNzcw.G142ww.r56xiYQvf2GQPHDSaNqOd4Pcz6zmGNckWXRs9M";
let Config = {
    Finder: {
        Mirage: {
            Day: false, /** or `false` */
            Night: true,
            ToOne: false /** If ToOne is true webhook Day and Night not work. */
        },
        SwordLegend: true,
        HakiColor: {
            Normal: false,
            Legend: false,
            ToOne: false /** If ToOne is true webhook Normal and Legend not work. */
        },
        Moon: true,
        Boss: false /** Why not support fruit? I don't know. */
    },
    /**
     * If finder is true, please add to Webhook. Or no u'll have error.
     */
    Webhook: {
        Mirage: {
            Day: "",
            Night: "https://discord.com/api/webhooks/1198889608927252532/9vFWGePasJAUnuf0J0o1PUfDfrlCE5DoYasioNJHh8hRkExAqYJz3QGUveWsnBAB52HN",
            ToOne: ""
        },
        SwordLegend: "",
        HakiColor: {
            Normal: "",
            Legend: "",
            ToOne: ""
        },
        Moon: "",
        Boss: ""
    },
    PingRole: {
        Enable: false,
        Mirage: {
            Day: "",
            Night: "",
            ToOne: ""
        },
        SwordLegend: "",
        HakiColor: {
            Normal: "",
            Legend: "",
            ToOne: ""
        },
        Moon: "",
        Boss: ""
    },
    Embed: {
        NameServer: "Hirimi Hub | Notification Mirage",
        LinkInvite: "https://discord.com/invite/RtWeughmYp",
        Timestamp: true, /** If is true, it will add time to your embed in footer. */
        RandomAnimeImage: false, /** It have some nsfw maybe ;-; */
        Credit: {
            Key: "HereIsYourKey", /** Dont edit lol. */
            /** If key is invaild, your embed have credit. 
             * DMs elian.riu to buy.
            */
            CustomContent: true,
            /** Cant enable if your key is invaild. */
            Content: `Copied by elian.riu`,
            /** Cant edit if your key is invaild. */
            Enable: true
            /** Cant disable if your key is invaild. */
        }
    }
}

/** Install pkg: npm i discord.js discord.js-selfbot-v13 */

const { EmbedBuilder, WebhookClient } = require('discord.js');
const { Client, Intents } = require('discord.js-selfbot-v13');

const client = new Client({
    intents: new Intents(7796),
    partials: ['USER', 'CHANNEL', 'GUILD_MEMBER', 'MESSAGE', 'REACTION', 'GUILD_SCHEDULED_EVENT'],
    checkUpdate: false
});

const HakiLegendList = [
    "Snow White ",
    "Winter Sky ",
    "Pure Red "
]

const AllHakiColor = {
    "Orange Soda ": parseInt("#d73b02".slice(1), 16),
    "Bright Yellow ": parseInt("#d7e502".slice(1), 16),
    "Yellow Sunshine ": parseInt("#efff0e".slice(1), 16),
    "Slimy Green ": parseInt("#05e801".slice(1), 16),
    "Green Lizard ": parseInt("#aaf701".slice(1), 16),
    "Blue Jeans ": parseInt("#15ffd7".slice(1), 16),
    "Plump Purple ": parseInt("#4d05ef".slice(1), 16),
    "Fiery Rose ": parseInt("#c80907".slice(1), 16),
    "Heat Wave ": parseInt("#ef8d04".slice(1), 16),
    "Absolute Zero ": parseInt("#0504f7".slice(1), 16),
    "Snow White ": parseInt("#ffffff".slice(1), 16),
    "Pure Red ": parseInt("#ff0002".slice(1), 16),
    "Winter Sky ": parseInt("#ff00ff".slice(1), 16)
};

const CheckAllConfig = () => {
    const CfgMirage = Config.Finder.Mirage.ToOne;
    const WebhookMirage = Config.Webhook.Mirage.ToOne;
    if (CfgMirage) {
        Config.Finder.Mirage.Night = false;
        Config.Finder.Mirage.Day = false;
        Config.Webhook.Mirage.Night = WebhookMirage;
        Config.Webhook.Mirage.Day = WebhookMirage;
        if (!WebhookMirage) {
            console.log("Webhook Mirage To One is invaild.");
            process.exit(0);
        };
    };
    const CfgHaki = Config.Finder.HakiColor.ToOne;
    const WebhookHaki = Config.Webhook.HakiColor.ToOne;
    if (CfgHaki) {
        Config.Finder.HakiColor.Normal = false;
        Config.Finder.HakiColor.Legend = false;
        Config.Webhook.HakiColor.Normal = WebhookHaki;
        Config.Webhook.HakiColor.Legend = WebhookHaki;
        if (!WebhookHaki) {
            console.log("Webhook Haki To One is invaild.");
            process.exit(0);
        };
    };
};

CheckAllConfig();

const CheckMirageToOne = () => {
    if (Config.Finder.Mirage.ToOne) {
        return true;
    } else {
        return false;
    }
}

const CheckHakiToOne = () => {
    if (Config.Finder.HakiColor.ToOne) {
        return true;
    } else {
        return false;
    }
}

const CheckPingRole = (data, roleid) => {
    const CfgPingRole = Config.PingRole;
    if (CfgPingRole.Enable) {
        data.embeds = data.embeds;
        data.content = `<@&${roleid}>`;
        return data;
    } else {
        return data;
    };
}

const CheckMirageNight = (string) => {
    let Output = string.match(/(\w+ \(\d+m to \w+\))/);

    if (Output !== null) {
        const IsNight = Output[0];
        if (IsNight.includes("Night")) return true
        else return false;
    } else {
        return null;
    }
};

const CheckAnimeRandom = async (embed) => {
    const CfgAnimeRandom = Config.Embed.RandomAnimeImage;
    const type = "waifu";
    const { data: img } = await require('axios').get('https://api.waifu.pics/sfw/' + type);
    if (CfgAnimeRandom) {
        embed.setImage(img.url);
    };
    return embed;
};

const CheckTimestampEnable = (embed) => {
    if (Config.Embed.Timestamp) {
        embed.setTimestamp(new Date().getTime());
    };
    return embed;
};

const CheckCreditContent = (embed) => {
    const IsEnable = Config.Embed.Credit.Enable;
    const IsKey = CheckCreditKey();
    const IsCustomContent = Config.Embed.Credit.CustomContent;
    const FooterContent = Config.Embed.Credit.Content;
    if (IsKey) {
        if (IsEnable) {
            if (IsCustomContent) {
                embed.setFooter({
                    text: FooterContent.toString() || "Made by elian.riu",
                });
            } else {
                embed;
            }
        } else {
            embed.setFooter(null);
        };
    };
    return embed;
};

const CheckConfig = async (data) => {
    data = CheckTimestampEnable(data);
    data = CheckCreditContent(data);
    data = await CheckAnimeRandom(data);
    return data;
};

const GetPlaceID = (sea) => {
    const PlaceID = {
        "First Sea": 2753915549,
        "Second Sea": 4442272183,
        "Third Sea": 7449423635
    };
    return PlaceID[sea];
}

const IsJobId = (string) => {
    const RegExJobId = /^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/;
    return RegExJobId.test(string);
};

const ReplacedJobId = (jobid) => {
    return jobid.toString().replace('```', '').replace('```', '').replace('lua', '').replace('yaml', '').replace('\n', '').replace('\n', '');
};

const WhereSea = (string) => {
    let sea = '';
    string = string.toLowerCase();
    if (string.includes('sea 1')) {
        sea = 'First Sea';
    } else if (string.includes('sea 2')) {
        sea = 'Second Sea';
    } else if (string.includes('sea 3')) {
        sea = 'Third Sea';
    }
    return sea;
};

const PlayerIn = (string) => {
    const RegExPlayer = /\b\d{1,2}\/\d{1,2}\b/g;
    return string.match(RegExPlayer)[0];
};

const CheckMirage = (string) => {
    string = string.toLowerCase();
    return string.includes('mirage');
};

const CheckHaki = (string) => {
    const Haki = string.match(/\|\s([\w\s]+)\s:\s\d+ƒ/)/** Match haki and price */
    return Haki ? Haki[0].replace('| ', '')/** Remove `|` */.replace(/:\s*\d+ƒ/g, '')/** Remove price */ : false;
}

const CheckMoon = (string) => {
    const RegExMoon = /Will (End|Full) Moon In (\d+) Minutes/g.exec(string);
    return RegExMoon;
};

const CheckSword = (string) => {
    const Sword = string.match(/\w+:crossed_swords:/);
    return Sword ? Sword[0].replace(":crossed_swords:", "") : false;
};

const CheckCreditKey = () => {
    if (Config.Embed.Credit.Key !== "HereIsYourKey") {
        return false;
    } else {
        return true;
    };
};

const SendWebhook = (url, data) => {
    try {
        const Webhook = new WebhookClient({ url: url });
        return Webhook.send(data);
    } catch (error) {
        if (error) {
            console.error("Your Webhook is invaild.");
            process.exit(0);
        }
    }
}

const CheckHirimiUp = (string) => {
    if (!string.includes('Finder')) {
        return true;
    } else {
        return false;
    }
};

const FormatContent = (string) => {
    const RegExContent = /(\b\d{1,8}\/\d{1,8}\b)( \((Become|End) Around (\d{2}:\d{2}) Minutes\))?/;
    return RegExContent.exec(string);
}

const GetMinutes = (time) => {
    var MinSec = time.split(":");
    var Sec = parseInt(MinSec[1]);

    if (Sec >= 30) {
        var Min = parseInt(MinSec[0]);
        Min += 1;;
        return Min.toString();
    } else {
        var Min = parseInt(MinSec[0]);
        return Min.toString();
    }
}

if (!CheckCreditKey()) {
    console.warn('Your key is invaild.');
    process.exit(0);
}

client.on("ready", async () => {
    console.log(`Logged in ${client.user.tag}`);
});

// discord.gg/tsuoscripts
const TsuoId = {
    MirageChannel: 1154643733816557578,
    SwordLegendChannel: 1154643843535351930,
    HakiColorChannel: 1154643809196585040,
    MoonChannel: 1154643684202135592,
    BossChannel: 1154643764158140466,
    // FruitChannel: 1154643779664490537
};

// discord.gg/sKbNcDBQZw
const MukuroId = {
    MoonChannel: 1085571159849979944,
    MirageChannel: 1085629109893349498
}

// discord.gg/w-azure
const WAzureId = {
    HakiColorChannel: 1028315703419342868
}

// discord.gg/TWSMxpqHs6
const SonicId = {
    MirageChannel: 1068870160309555310,
    MoonChannel: 1067228663554261103,
    HakiColorChannel: [
        1127514568982265897 /** Legend */,
        1127514620345716796 /** Normal */
    ],
    SwordLegendChannel: 1127514940748603464,
    BossChannel: 1127324950320124000
}

// discord.gg/mFzWdBUn45
const MTrietId = {
    MirageChannel: 1157341560149647540,
    MoonChannel: 1157866606345592874,
    SwordLegendChannel: 1160185085778214924
}

// discord.gg/skyland
const MaruId = {
    MirageChannel: 1149355793175556236,
    MoonChannel: 1149355877120356412,
    HakiColorChannel: 1149355986931421275 /** Legend */
}
// discord.gg/RtWeughmYp
const HirimiID = {
    MirageChannel: 1192115248887500800,
    SwordLegendChannel: 1193938412806348941,
    HakiColorChannel: 1194293665556873296,
    MoonChannel: 1192117554144096276,
    BossChannel: 1195545657226833940
}
client.on("messageCreate", async (message) => {
    const ChannelId = message.channelId;
    const MEmbed = message.embeds[0];
    const Content = message.content;
    const LinkInvite = Config.Embed.LinkInvite;
    const NameServer = Config.Embed.NameServer;
    const PingRole = Config.PingRole;
    const CfgMirage = Config.Finder.Mirage;
    const CfgHaki = Config.Finder.HakiColor;
    const CfgSword = Config.Finder.SwordLegend;
    const CfgMoon = Config.Finder.Moon;
    // Tsuo
    if (ChannelId == HirimiID.HakiColorChannel || ChannelId == HirimiID.MirageChannel || ChannelId == HirimiID.BossChannel || ChannelId == HirimiID.SwordLegendChannel || ChannelId == HirimiID.MoonChannel) {
        if (!CheckHirimiUp) return;
        const Info = MEmbed.description;
        const AllFields = MEmbed.fields;
        let JobId;
        for (let i = 0; i < AllFields.length; i++) {
            const Field = AllFields[i];
            const ReplacedContent = Field.value.toString().replace('```', '').replace('```', '').replace('lua', '').replace('yaml', '').replace('\n', '').replace('\n', '');
            if (IsJobId(ReplacedContent)) {
                JobId = Field.value;
                break;
            };
        };
        const PlayerInServer = PlayerIn(Info);
        const HakiInServer = CheckHaki(Info);
        const HasMirage = CheckMirage(Info);
        const Sea = WhereSea(Info);
        const MoonInServer = CheckMoon(Info);
        const Sword = CheckSword(Info);
        // Done get all from Embed.
        // Mirage webhook.
        if (HasMirage && (CfgMirage.ToOne || CfgMirage.Day || CfgMirage.Night)) {
            // Day and Night to one webhook.
            if (CheckMirageToOne()) {
                const MirageEmbed = await CheckConfig(new EmbedBuilder()
                    .setTitle("Webhook Mirage Island - " + Config.Embed.NameServer)
                    .setDescription(`**[Join ${NameServer}](https://${LinkInvite})**`)
                    .setFields(
                        { name: "Player In Server: ", value: `\`\`\`${PlayerInServer}\`\`\``, inline: true },
                        { name: "Mirage Island: ", value: "```✅```", inline: true },
                        { name: "Time In Server: ", value: "```" + (CheckMirageNight(Info) ? "🌑 Night" : "☀️ Day") + "```", inline: true },
                        { name: "Job ID: ", value: JobId },
                        { name: "Script Join Server: ", value: `\`\`\`lua\ngame:GetService("TeleportService"): TeleportToPlaceInstance(${GetPlaceID(Sea)}, "${ReplacedJobId(JobId)}", game.Players.LocalPlayer)\`\`\`` }
                    ))
                let data = { embeds: [MirageEmbed] }
                SendWebhook(Config.Webhook.Mirage.ToOne, CheckPingRole(data, PingRole.Mirage.ToOne));
            } else {
                // Night mirage.
                if (CheckMirageNight(Info) && CfgMirage.Night) {
                    const MirageEmbed = await CheckConfig(new EmbedBuilder()
                        .setTitle("Hirimi Hub | Mirage Notification - " + Config.Embed.NameServer)
                        .setDescription(`**[Join ${NameServer}](https://${LinkInvite})**`)
                        .setFields(
                            { name: "Player In Server: ", value: `\`\`\`${PlayerInServer}\`\`\``, inline: true },
                            { name: "Mirage Island: ", value: "```✅```", inline: true },
                            { name: "Time In Server: ", value: "```" + (CheckMirageNight(Info) ? "🌑 Night" : "☀️ Day") + "```", inline: true },
                            { name: "Job ID: ", value: JobId },
                            { name: "Script Join Server: ", value: `\`\`\`lua\ngame:GetService("TeleportService"): TeleportToPlaceInstance(${GetPlaceID(Sea)}, "${ReplacedJobId(JobId)}", game.Players.LocalPlayer)\`\`\`` }
                        ))
                    let data = { embeds: [MirageEmbed] }
                    SendWebhook(Config.Webhook.Mirage.Night, CheckPingRole(data, PingRole.Mirage.Night));
                }
                // Day mirage 
                else if (!CheckMirageNight(Info) && CfgMirage.Day) {
                    const MirageEmbed = await CheckConfig(new EmbedBuilder()
                        .setTitle("Webhook Mirage Island - " + Config.Embed.NameServer)
                        .setDescription(`**[Join ${NameServer}](https://${LinkInvite})**`)
                        .setFields(
                            { name: "Player In Server: ", value: `\`\`\`${PlayerInServer}\`\`\``, inline: true },
                            { name: "Mirage Island: ", value: "```✅```", inline: true },
                            { name: "Time In Server: ", value: "```" + (CheckMirageNight(Info) ? "🌑 Night" : "☀️ Day") + "```", inline: true },
                            { name: "Job ID: ", value: JobId },
                            { name: "Script Join Server: ", value: `\`\`\`lua\ngame:GetService("TeleportService"): TeleportToPlaceInstance(${GetPlaceID(Sea)}, "${ReplacedJobId(JobId)}", game.Players.LocalPlayer)\`\`\`` }
                        ))
                    let data = { embeds: [MirageEmbed] }
                    SendWebhook(Config.Webhook.Mirage.Day, CheckPingRole(data, PingRole.Mirage.Day));
                }
            }
        };
        // Haki Color webhook.
        if (HakiInServer && (CfgHaki.ToOne || CfgHaki.Normal || CfgHaki.Legend)) {
            let HakiLegend = HakiLegendList.includes(HakiInServer);
            if (CheckHakiToOne()) {
                // Haki Legend and Normal webhook.
                const HakiEmbed = await CheckConfig(new EmbedBuilder()
                    .setTitle(`Webhook Haki ${HakiLegend ? "Legend" : "Regular"} - ` + Config.Embed.NameServer)
                    .setDescription(`** [Join ${NameServer}](https://${LinkInvite})**`)
                    .setFields(
                        { name: "Player In Server: ", value: `\`\`\`${PlayerInServer}\`\`\``, inline: true },
                        { name: "Haki Color: ", value: `\`\`\`${HakiInServer}\`\`\``, inline: true },
                        { name: "Job ID: ", value: JobId },
                        { name: "Script Join Server: ", value: `\`\`\`lua\ngame:GetService("TeleportService"): TeleportToPlaceInstance(${GetPlaceID(Sea)}, "${ReplacedJobId(JobId)}", game.Players.LocalPlayer)\`\`\`` }
                    )
                    .setColor(AllHakiColor[HakiInServer]))
                let data = { embeds: [HakiEmbed] }
                SendWebhook(Config.Webhook.HakiColor.ToOne, CheckPingRole(data, PingRole.HakiColor.ToOne));
            } else {
                // Haki Legend.
                if (HakiLegend && CfgHaki.Legend) {
                    const HakiEmbed = await CheckConfig(new EmbedBuilder()
                        .setTitle("Webhook Haki Legend - " + Config.Embed.NameServer)
                        .setDescription(`**[Join ${NameServer}](https://${LinkInvite})**`)
                        .setFields(
                            { name: "Player In Server: ", value: `\`\`\`${PlayerInServer}\`\`\``, inline: true },
                            { name: "Haki Color: ", value: `\`\`\`${HakiInServer}\`\`\``, inline: true },
                            { name: "Job ID: ", value: JobId },
                            { name: "Script Join Server: ", value: `\`\`\`lua\ngame:GetService("TeleportService"): TeleportToPlaceInstance(${GetPlaceID(Sea)}, "${ReplacedJobId(JobId)}", game.Players.LocalPlayer)\`\`\`` }
                        )
                        .setColor(AllHakiColor[HakiInServer]))
                    let data = { embeds: [HakiEmbed] }
                    SendWebhook(Config.Webhook.HakiColor.Legend, CheckPingRole(data, PingRole.HakiColor.Legend));
                }
                // Haki Normal.
                else if (!HakiLegend && CfgHaki.Normal) {
                    const HakiEmbed = await CheckConfig(new EmbedBuilder()
                        .setTitle("Webhook Haki Regular - " + Config.Embed.NameServer)
                        .setDescription(`**[Join ${NameServer}](https://${LinkInvite})**`)
                        .setFields(
                            { name: "Player In Server: ", value: `\`\`\`${PlayerInServer}\`\`\``, inline: true },
                            { name: "Haki Color: ", value: `\`\`\`${HakiInServer}\`\`\``, inline: true },
                            { name: "Job ID: ", value: JobId },
                            { name: "Script Join Server: ", value: `\`\`\`lua\ngame:GetService("TeleportService"): TeleportToPlaceInstance(${GetPlaceID(Sea)}, "${ReplacedJobId(JobId)}", game.Players.LocalPlayer)\`\`\`` }
                        )
                        .setColor(AllHakiColor[HakiInServer]))
                    let data = { embeds: [HakiEmbed] }
                    SendWebhook(Config.Webhook.HakiColor.Normal, CheckPingRole(data, PingRole.HakiColor.Normal));
                }
            }
        };
        // Sword webhook.
        if (Sword && CfgSword) {
            const SwordEmbed = await CheckConfig(new EmbedBuilder()
                .setTitle(`Webhook Sword Legend - ` + Config.Embed.NameServer)
                .setDescription(`**[Join ${NameServer}](https://${LinkInvite})**`)
                .setFields(
                    { name: "Player In Server: ", value: `\`\`\`${PlayerInServer}\`\`\``, inline: true },
                    { name: "Sword Name: ", value: `\`\`\`⚔️ ${Sword}\`\`\``, inline: true },
                    { name: "Job ID: ", value: JobId },
                    { name: "Script Join Server: ", value: `\`\`\`lua\ngame:GetService("TeleportService"): TeleportToPlaceInstance(${GetPlaceID(Sea)}, "${ReplacedJobId(JobId)}", game.Players.LocalPlayer)\`\`\`` }
                ))
            let data = { embeds: [SwordEmbed] }
            SendWebhook(Config.Webhook.SwordLegend, CheckPingRole(data, PingRole.SwordLegend));
        };
        // Moon Webhook.
        if (MoonInServer && CfgMoon) {
            const MoonStatus = MoonInServer[1];
            let MoonPhase = "7/8";
            let Minutes = MoonInServer[2];
            Minutes = parseInt(Minutes);
            if (MoonStatus.includes("Full")) {
                if (Minutes >= 12) {
                    MoonPhase = "7/8";
                } else if (Minutes <= 12) {
                    MoonPhase = "8/8";
                } else {
                    return;
                };
            } else if (MoonStatus.includes("End")) {
                if (Minutes >= 12) {
                    MoonPhase = "7/8";
                } else if (Minutes <= 12) {
                    MoonPhase = "8/8";
                } else {
                    return;
                };
            }
            // console.log(`${MoonPhase}: Will ${MoonStatus} moon in ${Minutes}m`);
            const MoonEmbed = await CheckConfig(new EmbedBuilder()
                .setTitle(`Webhook Moon - ` + Config.Embed.NameServer)
                .setDescription(`**[Join ${NameServer}](https://${LinkInvite})**`)
                .setFields(
                    { name: "Player In Server: ", value: `\`\`\`${PlayerInServer}\`\`\``, inline: true },
                    { name: "World: ", value: "```" + Sea + "```", inline: true },
                    { name: "Moon phase: ", value: `\`\`\`${MoonPhase} (Will ${MoonStatus} Moon In ${Minutes} Minutes)\`\`\`` },
                    { name: "Job ID: ", value: JobId },
                    { name: "Script Join Server: ", value: `\`\`\`lua\ngame:GetService("TeleportService"): TeleportToPlaceInstance(${GetPlaceID(Sea)}, "${ReplacedJobId(JobId)}", game.Players.LocalPlayer)\`\`\`` }
                ))
            let data = { embeds: [MoonEmbed] }
            SendWebhook(Config.Webhook.Moon, CheckPingRole(data, PingRole.Moon));
        };
    }
    // Mukuro Mirage
    if (ChannelId == MukuroId.MirageChannel && (CfgMirage.ToOne || CfgMirage.Day || CfgMirage.Night)) {
        const JobId = MEmbed.fields[3].value;
        const PlayerInServer = MEmbed.fields[2].value;
        const MirageEmbed = await CheckConfig(new EmbedBuilder()
            .setTitle("Webhook Mirage Island - " + Config.Embed.NameServer)
            .setDescription(`**[Join ${NameServer}](https://${LinkInvite})**`)
            .setFields(
                { name: "Player In Server: ", value: `\`\`\`${ReplacedJobId(PlayerInServer)}\`\`\``, inline: true },
                { name: "Mirage Island: ", value: "```✅ Yes```", inline: true },
                { name: "Time In Server: ", value: "```Join to know```", inline: true },
                { name: "Job ID: ", value: JobId },
                { name: "Script Join Server: ", value: `\`\`\`lua\ngame:GetService("TeleportService"): TeleportToPlaceInstance(${GetPlaceID("Third Sea")}, "${ReplacedJobId(JobId)}", game.Players.LocalPlayer)\`\`\`` }
            ))
        let data = { embeds: [MirageEmbed] }
        if (CheckMirageToOne()) {
            SendWebhook(Config.Webhook.Mirage.ToOne, CheckPingRole(data, PingRole.Mirage.ToOne));
        } else {
            if (CfgMirage.Night) {
                SendWebhook(Config.Webhook.Mirage.Night, CheckPingRole(data, PingRole.Mirage.Night));
            } else if (CfgMirage.Day) {
                SendWebhook(Config.Webhook.Mirage.Day, CheckPingRole(data, PingRole.Mirage.Day));
            }
        }
    }
    // Mukuro Moon and Mirage 
    else if (ChannelId == MukuroId.MoonChannel && CfgMoon) {
        let MoonPhase = MEmbed.fields[0].value;
        let HasMirage = MEmbed.fields[1].value;
        const PlayerInServer = MEmbed.fields[2].value;
        const JobId = MEmbed.fields[3].value;
        if (ReplacedJobId(HasMirage).includes('true')) {
            HasMirage = true;
        }
        // MoonPhase = ReplacedJobId(MoonPhase);
        // MoonPhase = ;
        MoonPhase = FormatContent(MoonPhase);
        let ContentLast = false;
        if (MoonPhase[3]) {
            const Time = GetMinutes(MoonPhase[4]);
            let TypeMoon = MoonPhase[3];
            if (TypeMoon.includes("Become")) TypeMoon = "Full";
            ContentLast = ` (Will ${TypeMoon} Moon In ${Time} Minutes)`;
        }
        MoonPhase = MoonPhase[1];
        const MoonEmbed = await CheckConfig(new EmbedBuilder()
            .setTitle(`Webhook Moon - ` + Config.Embed.NameServer)
            .setDescription(`**[Join ${NameServer}](https://${LinkInvite})**`)
            .setFields(
                { name: "Player In Server: ", value: `\`\`\`${ReplacedJobId(PlayerInServer)}\`\`\``, inline: true },
                { name: "World: ", value: "```Third Sea```", inline: true },
                { name: "Moon phase: ", value: `\`\`\`${MoonPhase}${ContentLast ? ContentLast : " (Join to know)"}\`\`\`` },
                { name: "Job ID: ", value: JobId },
                { name: "Script Join Server: ", value: `\`\`\`lua\ngame:GetService("TeleportService"): TeleportToPlaceInstance(${GetPlaceID("Third Sea")}, "${ReplacedJobId(JobId)}", game.Players.LocalPlayer)\`\`\`` }
            ))
        let data = { embeds: [MoonEmbed] }
        SendWebhook(Config.Webhook.Moon, CheckPingRole(data, PingRole.Moon));
        if (HasMirage == true) {
            const MirageEmbed = await CheckConfig(new EmbedBuilder()
                .setTitle("Webhook Mirage Island - " + Config.Embed.NameServer)
                .setDescription(`**[Join ${NameServer}](https://${LinkInvite})**`)
                .setFields(
                    { name: "Player In Server: ", value: `\`\`\`${ReplacedJobId(PlayerInServer)}\`\`\``, inline: true },
                    { name: "Mirage Island: ", value: "```✅ Yes```", inline: true },
                    { name: "Time In Server: ", value: "```Join to know```", inline: true },
                    { name: "Job ID: ", value: JobId },
                    { name: "Script Join Server: ", value: `\`\`\`lua\ngame:GetService("TeleportService"): TeleportToPlaceInstance(${GetPlaceID("Third Sea")}, "${ReplacedJobId(JobId)}", game.Players.LocalPlayer)\`\`\`` }
                ))
            let data = { embeds: [MirageEmbed] }
            if (CheckMirageToOne()) {
                SendWebhook(Config.Webhook.Mirage.ToOne, CheckPingRole(data, PingRole.Mirage.ToOne));
            } else {
                if (CfgMirage.Night) {
                    SendWebhook(Config.Webhook.Mirage.Night, CheckPingRole(data, PingRole.Mirage.Night));
                } else if (CfgMirage.Day) {
                    SendWebhook(Config.Webhook.Mirage.Day, CheckPingRole(data, PingRole.Mirage.Day));
                }
            }
        }
    };
});

client.login(UserToken);

// require('axios').get('https://api.waifu.pics/sfw/waifu').then(r => console.log(r));
