<?php
/**
*
* help_faq.php [French (Formal Honorifics)]
*
* @package language
* @version $Id: $
* @copyright (c) 2010 phpBB Group
* @author 2010-07-15 - Maël Soucaze
* @license http://opensource.org/licenses/gpl-license.php GNU Public License
*
*/

/**
* DO NOT CHANGE
*/
if (!defined('IN_PHPBB'))
{
	exit;
}

if (empty($lang) || !is_array($lang))
{
	$lang = array();
}

// DEVELOPERS PLEASE NOTE
//
// All language files should use UTF-8 as their encoding and the files must not contain a BOM.
//
// Placeholders can now contain order information, e.g. instead of
// 'Page %s of %s' you can (and should) write 'Page %1$s of %2$s', this allows
// translators to re-order the output of data while ensuring it remains correct
//
// You do not need this where single placeholders are used, e.g. 'Message %d' is fine
// equally where a string contains only two placeholders which are used to wrap text
// in a url you again do not need to specify an order e.g., 'Click %sHERE%s' is fine
$help = array(
	array(
		0	=> '--',
		1	=> 'Problèmes de connexion et d’inscription',
	),
	array(
		0	=> 'Pourquoi ne puis-je pas me connecter ?',
		1	=> 'Il y a plusieurs raisons qui peuvent en être la cause. Premièrement, assurez-vous que votre identifiant et votre mot de passe soient corrects. S’ils le sont, contactez le propriétaire du forum afin de vous assurer de ne pas avoir été banni. Il est également possible que le propriétaire du site Internet ait une erreur de configuration de son côté et qu’il soit nécessaire de la corriger.',
	),
	array(
		0	=> 'Pourquoi ai-je besoin de m’inscrire, après tout ?',
		1	=> 'Vous pouvez ne pas le faire, il appartient à l’administrateur du forum d’exiger ou non que vous soyez inscrit afin de pouvoir publier des messages. Cependant, l’inscription vous donnera accès à des fonctionnalités supplémentaires qui ne sont pas disponibles aux visiteurs, comme les avatars personnalisés, la messagerie privée, l’envoi d’e-mails aux autres utilisateurs, l’adhésion à un groupe d’utilisateurs, etc. Cela ne vous prend qu’un court instant et nous vous recommandons par conséquence de le faire.',
	),
	array(
		0	=> 'Pourquoi suis-je déconnecté automatiquement ?',
		1	=> 'Si vous ne cochez pas la case <em>Me connecter automatiquement</em> lors de votre connexion au forum, vous ne resterez connecté que pour une période prédéfinie. Cette prévention empêche l’utilisation de votre compte par une personne malveillante. Pour rester connecté, cochez cette case lors de votre connexion, mais ce n’est pas recommandé si vous accédez au forum par un ordinateur public, par exemple dans une librairie, un cybercafé, une université, etc. Si vous ne voyez pas cette case à cocher, cela signifie que votre administrateur a désactivé cette fonctionnalité.',
	),
	array(
		0	=> 'Comment puis-je empêcher l’apparition de mon identifiant dans la liste des utilisateurs en ligne ?',
		1	=> 'Dans le panneau de contrôle de l’utilisateur, en-dessous de “Préférences du forum”, vous trouverez une option intitulée <em>Masquer votre statut en ligne</em>. Si vous activez cette option en cochant <samp>Oui</samp>, vous ne serez visible qu’aux administrateurs, aux modérateurs et à vous-même. Vous serez compté comme étant un utilisateur invisible.',
	),
	array(
		0	=> 'J’ai perdu mon mot de passe !',
		1	=> 'Pas de panique ! Bien que votre mot de passe ne puisse pas être récupéré, il peut facilement être réinitialisé. Rendez-vous sur la page de connexion et cliquez sur <em>J’ai perdu mon mot de passe</em>. Suivez les instructions et vous devriez pouvoir vous connecter de nouveau.',
	),
	array(
		0	=> 'Je suis inscrit mais ne peux pas me connecter !',
		1	=> 'Premièrement, vérifiez votre identifiant et votre mot de passe. S’ils sont corrects, alors une des deux choses suivantes a pu s’être produite. Si le support de la COPPA est activé et que vous avez spécifié avoir en dessous de 13 ans pendant l’inscription, vous devrez suivre les instructions que vous avez reçu. Certains forums exigeront également que les nouvelles inscriptions doivent être activées, par vous-même ou par un administrateur, avant que vous puissiez ouvrir une session ; cette information était affichée pendant l’inscription. Si un e-mail vous a déjà été envoyé, suivez les instructions. Si vous n’avez pas reçu d’e-mail, vous avez pu avoir spécifié une adresse e-mail incorrecte ou l’e-mail a pu avoir été considéré comme un courrier indésirable. Si vous êtes certain que l’adresse e-mail que vous avez spécifié était correcte, essayez de contacter un administrateur.',
	),
	array(
		0	=> 'Je m’étais déjà inscrit mais ne peux plus me connecter à présent ?!',
		1	=> 'Essayez de retrouver l’e-mail qui vous a été envoyé lorsque vous vous êtes inscrit pour la première fois, vérifiez votre identifiant et votre mot de passe, puis réessayez. Il est possible qu’un administrateur ait désactivé ou supprimé votre compte pour une certaine raison. Beaucoup de forums suppriment périodiquement les utilisateurs qui n’ont rien publiés depuis un certain temps afin de réduire la taille de la base de données. Si tel était le cas, inscrivez-vous à nouveau et essayez de participer plus activement aux discussions.',
	),
	array(
		0	=> 'Qu’est-ce que la COPPA ?',
		1	=> 'La COPPA, ou la “Child Online Privacy and Protection Act”, est une loi des États-Unis qui exige que les sites Internet pouvant potentiellement collecter des informations sur des mineurs âgés de moins de 13 ans doivent avoir le consentement écrit des parents ou des tuteurs légaux. Si vous n’êtes pas sûr que cette loi s’applique également à votre inscription, ou au site Internet dans lequel vous souhaitez vous inscrire, contactez des conseillers ou avocats légaux qui pourront vous informer. Veuillez noter que les équipes de phpBB ne peuvent pas vous fournir d’assistance légale et ne sont pas le contact approprié pour des problèmes légaux de la sorte, excepté comme décrit ci-dessous.',
	),
	array(
		0	=> 'Pourquoi ne puis-je pas m’inscrire ?',
		1	=> 'Il est possible que le propriétaire du site Internet ait banni votre adresse IP ou interdit l’identifiant que vous souhaitez utiliser afin de vous inscrire. Le propriétaire du site Internet peut également avoir désactivé les inscriptions afin d’empêcher les nouveaux visiteurs de s’inscrire. Pour plus d’informations, veuillez contacter l’administrateur du forum.',
	),
	array(
		0	=> 'À quoi sert “Supprimer tous les cookies du forum” ?',
		1	=> 'L’option “Supprimer tous les cookies du forum” permet d’effacer tous les cookies créés par phpBB3 qui conservent votre authentification et votre connexion sur le forum. Cela fournit également des fonctionnalités telles que l’enregistrement du statut des messages, lu ou non lu, si cela a été activé par le propriétaire du forum. Si vous rencontrez des problèmes de connexion ou de déconnexion, la suppression des cookies du forum peut vous les corriger.',
	),
	array(
		0	=> '--',
		1	=> 'Préférences et réglages des utilisateurs',
	),
	array(
		0	=> 'Comment puis-je modifier mes réglages ?',
		1	=> 'Si vous êtes un utilisateur inscrit, tous vos réglages sont stockés dans la base de données du forum. Pour les modifier, rendez-vous sur votre panneau de contrôle de l’utilisateur ; ce lien se situe en haut de toutes les pages du forum. Ce système vous permettra de modifier tous vos réglages et toutes vos préférences.',
	),
	array(
		0	=> 'L’heure n’est pas correcte !',
		1	=> 'Il est possible que l’heure affichée soit réglée sur un fuseau horaire différent de celui dans lequel vous êtes. Si tel était le cas, rendez-vous sur votre panneau de contrôle de l’utilisateur et modifiez le fuseau horaire afin de trouver votre zone adéquate, par exemple Londres, Paris, New York, Sydney, etc. Veuillez noter que la modification du fuseau horaire, comme la plupart des réglages, n’est accessible qu’aux utilisateurs inscrits. Si vous n’êtes pas inscrit, c’est le moment idéal de le faire.',
	),
	array(
		0	=> 'J’ai modifié le fuseau horaire et l’heure n’est toujours pas correcte !',
		1	=> 'Si vous êtes certain d’avoir correctement réglé le fuseau horaire et l’heure d’été mais que l’heure est encore erronée, alors l’heure de l’horloge du serveur est incorrecte et les administrateurs devront la corriger.',
	),
	array(
		0	=> 'Ma langue n’apparaît pas dans la liste !',
		1	=> 'Soit l’administrateur n’a pas installé votre langue, soit personne n’a encore traduit phpBB dans votre langue. Essayez de demander à l’administrateur du forum s’il peut installer l’archive de langue que vous désirez. Si l’archive de langue n’existe pas, vous êtes libre de vous porter volontaire afin de créer une nouvelle traduction. Pour plus d’informations, veuillez vous rendre sur le site de phpBB.com (accessible depuis le lien situé en bas de toutes les pages du forum).',
	),
	array(
		0	=> 'Comment puis-je afficher une image associée à mon identifiant ?',
		1	=> 'Il y a deux images qui peuvent être associées à un identifiant lors de la consultation de messages. L’une d’elles peut être une image associée à votre rang, généralement en forme d’étoiles, de carrés ou de ronds, qui indiquent le nombre de messages à votre actif ou votre statut sur le forum. L’autre, habituellement une plus grande image, est connue sous le nom d’avatar et est généralement unique ou personnelle à chaque utilisateur. C’est à l’administrateur du forum d’activer les avatars et de décider de la manière dont ils sont mis à disposition. Si vous ne pouvez pas utiliser d’avatars, contactez l’administrateur du forum et demandez-lui pour quelles raisons a t-il souhaité désactiver cette fonctionnalité.',
	),
	array(
		0	=> 'Quel est mon rang et comment puis-je le modifier ?',
		1	=> 'Les rangs, qui apparaissent en dessous de votre identifiant, indiquent le nombre de messages que vous avez publié ou identifient certains utilisateurs, comme les modérateurs et les administrateurs. Dans la plupart des cas, vous ne pouvez pas directement modifier le texte des rangs du forum car ils sont réglés par l’administrateur du forum. Veuillez ne pas abuser de ce système en publiant inutilement des messages afin d’augmenter seulement votre rang sur le forum. Beaucoup de forums ne toléreront pas cela et un modérateur ou un administrateur abaissera votre compteur de messages.',
	),
	array(
		0	=> 'Lorsque je clique sur le lien de l’e-mail d’un utilisateur, il m’est demandé de me connecter ?',
		1	=> 'Seuls les utilisateurs inscrits peuvent envoyer des e-mails aux autres utilisateurs par l’intermédiaire du formulaire e-mail intégré, si l’administrateur a activé cette fonctionnalité. Cela a pour but d’empêcher toute utilisation malveillante du système e-mail par des utilisateurs anonymes ou par des agents automatisés.',
	),
	array(
		0	=> '--',
		1	=> 'Problèmes de publication',
	),
	array(
		0	=> 'Comment puis-je publier un sujet dans un forum ?',
		1	=> 'Pour publier un nouveau sujet dans un forum, cliquez sur le bouton adéquat situé sur l’écran du forum ou du sujet. Il se peut que vous ayez besoin d’être inscrit avant de pouvoir rédiger un message. Une liste de vos permissions sur chaque forum est disponible en bas de l’écran du forum ou du sujet. Par exemple : vous pouvez publier de nouveaux sujets, vous pouvez voter dans les sondages, etc.',
	),
	array(
		0	=> 'Comment puis-je éditer ou supprimer un message ?',
		1	=> 'À moins que vous ne soyez un administrateur ou un modérateur du forum, vous ne pouvez éditer ou supprimer que vos propres messages. Vous pouvez éditer un message en cliquant le bouton adéquat, parfois dans une limite de temps après que le message ait été publié. Si quelqu’un a déjà répondu au message, vous trouverez un petit bout de texte en dessous du message lorsque vous revenez au sujet qui énumère le nombre de fois que vous l’avez édité, contenant la date et l’heure. Ceci n’apparaîtra que si quelqu’un a effectué une réponse ; cela n’apparaîtra pas si un modérateur ou un administrateur a édité le message, bien qu’ils puissent laisser une note discrète exprimant leur raison. Veuillez noter que les utilisateurs normaux ne peuvent pas supprimer de message une fois que quelqu’un y a répondu.',
	),
	array(
		0	=> 'Comment puis-je ajouter une signature à un message ?',
		1	=> 'Pour ajouter une signature à un message, vous devez tout d’abord en créer une par l’intermédiaire de votre panneau de contrôle de l’utilisateur. Une fois créée, vous pouvez cocher la case <em>Insérer une signature</em> sur le formulaire de rédaction afin d’ajouter votre signature. Vous pouvez également ajouter une signature par défaut sur tous vos messages en cochant la case appropriée dans votre profil. Si vous faites cela, vous pouvez alors empêcher l’ajout individuel de la signature sur les messages en décochant la case d’ajout de la signature dans le formulaire de rédaction.',
	),
	array(
		0	=> 'Comment puis-je créer un sondage ?',
		1	=> 'Lorsque vous rédigez un nouveau sujet ou éditez le premier message d’un sujet, cliquez sur l’onglet “Création d’un sondage” en-dessous du formulaire principal de rédaction ; si vous ne pouvez pas le voir, c’est que vous n’avez pas les permissions appropriées afin de créer des sondages. Veuillez saisir le titre du sondage en incluant au moins deux options dans les champs adéquats, chaque option devant être dans une ligne séparée de la zone du texte. Vous pouvez également régler le nombre d’options par utilisateur en sélectionnant lors du vote “Options par utilisateur”, puis une limite de temps en jours pour le sondage (“0” pour une durée illimité) et enfin autoriser ou non les utilisateurs à modifier leur vote.',
	),
	array(
		0	=> 'Pourquoi ne puis-je pas ajouter plus d’options au sondage ?',
		1	=> 'La limite d’options d’un sondage est réglée par l’administrateur du forum. Si vous souhaitez ajouter plus d’options à votre sondage par rapport au nombre autorisé, contactez l’administrateur du forum.',
	),
	array(
		0	=> 'Comment puis-je éditer ou supprimer un sondage ?',
		1	=> 'Comme pour les messages, les sondages ne peuvent être édités que par leur auteur, un modérateur ou un administrateur. Pour éditer un sondage, cliquez sur “Éditer” dans le premier message du sujet ; il y aura toujours le sondage associé à celui-ci. Si personne n’a voté, les utilisateurs peuvent supprimer le sondage ou éditer chaque option du sondage. Cependant, si les membres ont déjà exprimés leurs votes, seuls les modérateurs ou les administrateurs peuvent éditer ou supprimer le sondage. Cela empêche la modification des options d’un sondage en cours.',
	),
	array(
		0	=> 'Pourquoi ne puis-je pas accéder au forum ?',
		1	=> 'Certains forums peuvent être limités à certains utilisateurs ou groupes d’utilisateurs. Pour consulter, lire, publier ou réaliser n’importe quelle autre action, vous avez besoin de permissions spéciales. Contactez un modérateur ou un administrateur du forum afin de demander votre accès.',
	),
	array(
		0	=> 'Pourquoi ne puis-je pas ajouter de pièces jointes ?',
		1	=> 'Les permissions afin d’ajouter des pièces jointes sont accordées par forum, par groupe ou par utilisateur. L’administrateur du forum n’a peut-être pas autorisé l’ajout de pièces jointes dans le forum auquel vous souhaitez les insérer, ou seuls certains groupes sont peut-être autorisés à insérer des pièces jointes. Contactez l’administrateur du forum si vous ne savez pas pourquoi vous ne pouvez pas insérer de pièces jointes.',
	),
	array(
		0	=> 'Pourquoi ai-je reçu un avertissement ?',
		1	=> 'Chaque administrateur du forum a son propre ensemble de règles pour son site. Si vous ne respectez pas une règle, vous recevrez un avertissement. Veuillez noter que c’est la décision de l’administrateur de ce forum, le phpBB Group n’a rien à voir avec l’avertissement distribué sur ce site. Contactez l’administrateur du forum si vous ne savez pas pourquoi vous avez reçu un avertissement.',
	),
	array(
		0	=> 'Comment puis-je rapporter des messages à un modérateur ?',
		1	=> 'Si l’administrateur du forum a activé cette fonctionnalité, vous devriez voir un bouton afin de rapporter des messages à côté du message que vous souhaitez rapporter. En cliquant sur celui-ci, vous trouverez toutes les étapes nécessaires afin de rapporter le message.',
	),
	array(
		0	=> 'Qu’est-ce le bouton “Sauvegarder” lors de la rédaction d’un sujet ?',
		1	=> 'Cela autorise à sauvegarder les messages qui doivent être complétés et envoyés à une date ultérieure. Rendez-vous sur le panneau de contrôle de l’utilisateur afin de recharger un message sauvegardé.',
	),
	array(
		0	=> 'Pourquoi mon message a-t-il besoin d’être approuvé ?',
		1	=> 'L’administrateur du forum peut décider que les messages que vous publiez sur le forum doivent être vérifiés avant d’être publiés. Il est également possible que l’administrateur vous ait placé dans un groupe d’utilisateurs pour lequel il juge nécessaire que les messages doivent être vérifiés avant d’être publiés. Pour plus d’informations, veuillez contacter l’administrateur du forum.',
	),
	array(
		0	=> 'Comment puis-je remonter mes sujets ?',
		1	=> 'En cliquant sur le lien “Remonter le sujet” lorsque vous êtes en train de consulter un sujet, vous pouvez “remonter” celui-ci en haut de la liste des sujets, à la première page du forum. Cependant, si vous ne voyez pas ce lien, cette fonctionnalité a peut-être été désactivée ou le temps d’attente nécessaire entre les remontages n’a peut-être pas encore été atteint. Il est également possible de remonter le sujet simplement en y répondant. Cependant, veuillez vous assurer de respecter les règles du forum.',
	),
	array(
		0	=> '--',
		1	=> 'Mise en forme et types de sujets',
	),
	array(
		0	=> 'Qu’est-ce que le BBCode ?',
		1	=> 'Le BBCode est une implémentation spéciale de l’HTML, offrant un meilleur contrôle sur la mise en forme d’un message. L’utilisation du BBCode est déterminée par l’administrateur mais vous pouvez également le désactiver sur chacun des messages depuis le formulaire de rédaction. Le BBCode est similaire à l’architecture de l’HTML, les balises sont contenues entre des crochets <strong>[</strong> et <strong>]</strong> à la place de <strong>&lt;</strong> et <strong>&gt;</strong>. Veuillez consulter le guide qui est accessible depuis la page de rédaction pour plus d’informations à propos du BBCode.',
	),
	array(
		0	=> 'Puis-je utiliser de l’HTML ?',
		1	=> 'Désolé, il n’est pas possible d’utiliser de l’HTML sur ce forum. La majeure partie de la mise en forme qui peut être réalisée avec de l’HTML peut être réalisée grâce à l’utilisation du BBCode.',
	),
	array(
		0	=> 'Que sont les émoticônes ?',
		1	=> 'Les émoticônes sont de petites images qui peuvent être utilisées afin d’exprimer des sentiments en utilisant un code court. Par exemple, “:)” exprime la joie alors que “:(” exprime la tristesse. La liste complète des émoticônes peut être affichée depuis le formulaire de rédaction. Essayez cependant de ne pas abuser des émoticônes, elles peuvent rapidement rendre un message illisible et un modérateur pourrait décider de l’éditer ou de le supprimer complètement. L’administrateur du forum peut également définir une limite du nombre d’émoticônes qui peuvent être utilisées dans un message.',
	),
	array(
		0	=> 'Puis-je publier des images ?',
		1	=> 'Bien sûr, des images peuvent être insérées dans vos messages. Si l’administrateur du forum a autorisé les pièces jointes, vous pouvez transférer des images sur le forum. Dans le cas contraire, vous devez faire un lien vers une image stockée sur un serveur Internet accessible publiquement, comme par exemple http://www.exemple.com/mon-image.gif. Vous ne pouvez ni faire de lien vers des images stockées sur votre propre ordinateur (à moins que celui-ci soit un serveur Internet), ni faire de lien vers des images stockées derrière un quelconque système d’authentification, par exemple les boîtes e-mails “Hotmail” ou “Yahoo!”, les sites protégés par un mot de passe, etc. Pour insérer une image, utilisez la balise BBCode [img].',
	),
	array(
		0	=> 'Que sont les annonces globales ?',
		1	=> 'Les annonces globales contiennent des informations très importantes et vous devriez les consulter aussi vite que possible. Elles apparaissent en haut de chaque forum et dans votre panneau de contrôle de l’utilisateur. Les permissions des annonces globales sont définies par l’administrateur du forum.',
	),
	array(
		0	=> 'Que sont les annonces ?',
		1	=> 'Les annonces contiennent souvent des informations importantes sur le forum dans lequel vous naviguez et vous devriez les consulter aussi vite que possible. Les annonces apparaissent en haut de chaque page du forum dans lequel elles ont été publiées. Tout comme les annonces globales, les permissions des annonces sont définies par l’administrateur du forum.',
	),
	array(
		0	=> 'Que sont les notes ?',
		1	=> 'Les notes apparaissent sous les annonces et seulement sur la première page du forum consulté. Elles sont souvent assez importantes et vous devriez les consulter dès que vous en avez l’occasion. Tout comme les annonces et les annonces globales, les permissions des notes sont définies par l’administrateur du forum.',
	),
	array(
		0	=> 'Que sont les sujets verrouillés ?',
		1	=> 'Les sujets verrouillés sont les sujets dans lesquels les utilisateurs ne peuvent plus répondre et dans lesquels les sondages sont automatiquement expirés. Les sujets peuvent être verrouillés pour de nombreuses raisons et ont été mis de cette façon par un modérateur ou un administrateur du forum. Vous pouvez également verrouiller vos propres sujets si l’administrateur vous en a donné les permissions.',
	),
	array(
		0	=> 'Que sont les icônes de sujet ?',
		1	=> 'Les icônes de sujet sont des images sélectionnées par l’auteur et sont associées à des messages afin d’indiquer leur contenu. La possibilité d’utiliser des icônes de sujet dépendent des permissions définies par l’administrateur du forum.',
	),
	array(
		0	=> '--',
		1	=> '--',
	),
	array(
		0	=> '--',
		1	=> 'Niveaux d’utilisateurs et groupes d’utilisateurs',
	),
	array(
		0	=> 'Que sont les administrateurs ?',
		1	=> 'Les administrateurs sont des membres possédant le plus haut niveau de contrôle sur le forum. Ces utilisateurs peuvent contrôler chaque facette des opérations du forum, incluant le réglage des permissions, le bannissement d’utilisateurs, la création de groupes d’utilisateurs ou de modérateurs, etc. Cela dépend des attributions du fondateur du forum et les permissions qu’il a attribué aux autres administrateurs. Ils peuvent également détenir les mêmes capacités que les modérateurs et cela dans tous les forums. Tout cela dépend des réglages effectués par le fondateur du forum.',
	),
	array(
		0	=> 'Que sont les modérateurs ?',
		1	=> 'Les modérateurs sont des utilisateurs individuels (ou groupes d’utilisateurs individuels) qui surveillent jour après jour les forums. Ils ont la possibilité d’éditer ou de supprimer les sujets, les verrouiller, les déverrouiller, les déplacer, les fusionner et les diviser dans le forum qu’ils modèrent. En règle générale, les modérateurs sont présents afin d’empêcher que des utilisateurs fassent du hors-sujet ou publient du contenu abusif ou offensant.',
	),
	array(
		0	=> 'Que sont les groupes d’utilisateurs ?',
		1	=> 'Les groupes d’utilisateurs sont une façon pour les administrateurs du forum de regrouper plusieurs utilisateurs. Chaque utilisateur peut appartenir à plusieurs groupes et chaque groupe peut être avoir des permissions individuelles. Cela rend les tâches plus faciles aux administrateurs car ils peuvent modifier les permissions de plusieurs utilisateurs en une seule fois, ou encore leur accorder des pouvoirs de modération, ou bien leur donner accès à un forum privé.',
	),
	array(
		0	=> 'Où sont les groupes d’utilisateurs et comment puis-je en rejoindre un ?',
		1	=> 'Vous pouvez consulter tous les groupes d’utilisateurs par l’intermédiaire du lien “Groupes d’utilisateurs” depuis votre panneau de contrôle de l’utilisateur. Si vous souhaitez en rejoindre un, cliquez sur le bouton approprié. Cependant, tous les groupes d’utilisateurs ne sont pas ouverts aux nouvelles adhésions. Certains peuvent nécessiter une approbation, d’autres peuvent être fermés et d’autres peuvent même être invisibles. Si le groupe est ouvert, vous pouvez le rejoindre en cliquant sur le bouton approprié. S’il nécessite une approbation, cliquez également sur le bouton approprié. Le responsable du groupe devra approuver votre requête et il pourra vous demander pourquoi vous souhaitez rejoindre le groupe. Merci de ne pas harceler un responsable de groupe s’il refuse votre requête : il doit avoir ses propres raisons.',
	),
	array(
		0	=> 'Comment puis-je devenir un responsable de groupe ?',
		1	=> 'Un responsable de groupe est généralement assigné lorsque les groupes d’utilisateurs sont initialement créés par un administrateur du forum. Si vous êtes intéressé par la création d’un groupe d’utilisateurs, votre premier contact devrait être un administrateur ; essayez de lui envoyer un message privé.',
	),
	array(
		0	=> 'Pourquoi certains groupes d’utilisateurs apparaissent dans une couleur différente ?',
		1	=> 'Les administrateurs du forum peuvent assigner une couleur aux membres d’un groupe d’utilisateurs afin de faciliter l’identification des membres de ce groupe.',
	),
	array(
		0	=> 'Qu’est-ce qu’un “Groupe d’utilisateurs par défaut” ?',
		1	=> 'Si vous êtes membre de plus d’un groupe d’utilisateurs, votre groupe d’utilisateurs par défaut est utilisé afin de déterminer quelle couleur et quel rang de groupe doivent être affichés pour vous par défaut. L’administrateur du forum peut vous donner la permission de modifier vous-même votre groupe d’utilisateurs par défaut par l’intermédiaire de votre panneau de contrôle de l’utilisateur.',
	),
	array(
		0	=> 'Qu’est-ce que le lien “L’équipe” ?',
		1	=> 'Cette page liste les membres de l’équipe du forum, incluant les administrateurs, les modérateurs et quelques informations, comme les forums qu’ils modèrent.',
	),
	array(
		0	=> '--',
		1	=> 'Messagerie privée',
	),
	array(
		0	=> 'Je ne peux pas envoyer de messages privés !',
		1	=> 'Il y a trois raisons qui peuvent en être la cause ; soit vous n’êtes pas inscrit ou connecté, soit un administrateur a désactivé entièrement la messagerie privée sur le forum ou soit il vous empêche d’envoyer des messages privés. Si vous êtes confronté au dernier cas, vous devriez demander la raison de l’administrateur du forum à avoir fait cela.',
	),
	array(
		0	=> 'Je continue à recevoir des messages privés non sollicités !',
		1	=> 'Vous pouvez empêcher un utilisateur à vous envoyer des messages privés en utilisant les règles de messages qui vous servent de filtres depuis votre panneau de contrôle de l’utilisateur. Si vous recevez des messages privés de manière abusive de la part de quelqu’un, informez-en un administrateur ; il pourra empêcher complètement un utilisateur d’envoyer des messages privés.',
	),
	array(
		0	=> 'J’ai reçu un spam ou un e-mail non désiré de la part de quelqu’un sur ce forum !',
		1	=> 'Nous en sommes désolés. Le formulaire d’envoi d’e-mail de ce forum possède des protections afin d’essayer de dépister les utilisateurs qui envoient de tels messages. Vous devriez envoyer par e-mail à un administrateur du forum une copie complète de l’e-mail que vous avez reçu. Il est très important que celui-ci inclue les en-têtes contenant les informations de l’auteur de l’e-mail. Il pourra alors agir en conséquence.',
	),
	array(
		0	=> '--',
		1	=> 'Amis et ignorés',
	),
	array(
		0	=> 'A quoi sert ma liste d’amis et d’ignorés ?',
		1	=> 'Vous pouvez utiliser ces listes afin d’organiser et trier les membres du forum. Les membres ajoutés dans votre liste d’amis seront listés dans votre panneau de contrôle de l’utilisateur afin de consulter rapidement leur statut en ligne et leur envoyer des messages privés. Selon le style utilisé, les messages publiés par ces utilisateurs peuvent éventuellement être mis en surbrillance. Si vous ajoutez un utilisateur à votre liste d’ignorés, tous les messages qu’il publiera seront masqués par défaut.',
	),
	array(
		0	=> 'Comment puis-je ajouter ou supprimer des utilisateurs de ma liste d’amis et d’ignorés ?',
		1	=> 'Vous pouvez ajouter des utilisateurs à ces listes de deux manières. Dans chaque profil d’utilisateurs, il y a un lien afin de les ajouter à votre liste d’amis ou d’ignorés. Alternativement, vous pouvez ajouter directement des utilisateurs en saisissant leur identifiant depuis le panneau de contrôle de l’utilisateur. Vous pouvez également supprimer des utilisateurs de vos listes en utilisant cette même page.',
	),
	array(
		0	=> '--',
		1	=> 'Recherche dans les forums',
	),
	array(
		0	=> 'Comment puis-je effectuer une recherche dans un ou des forums ?',
		1	=> 'Vous pouvez effectuer une recherche dans un ou des forums en saisissant un terme dans la boîte de recherche située sur l’index, sur les pages des forums et sur les pages des sujets. La recherche avancée peut être accessible en cliquant sur le lien “Recherche” disponible sur toutes les pages du forum. L’accès à la recherche dépend du style utilisé.',
	),
	array(
		0	=> 'Pourquoi ma recherche ne renvoie aucun résultat ?',
		1	=> 'Votre recherche était probablement trop vague ou incluait trop de termes communs qui ne sont pas indexés par phpBB3. Soyez plus précis et utilisez les options disponibles dans la recherche avancée.',
	),
	array(
		0	=> 'Pourquoi ma recherche renvoie à une page blanche ?!',
		1	=> 'Votre recherche a retourné trop de résultats pour que le serveur puisse les afficher. Utilisez la recherche avancée et soyez plus précis dans les termes utilisés et les forums dans lesquels vous souhaitez effectuer une recherche.',
	),
	array(
		0	=> 'Comment puis-je rechercher des utilisateurs ?',
		1	=> 'Rendez-vous sur la page “Membres” et cliquez sur le lien “Trouver un membre”. Remplissez ensuite convenablement les diverses options qui vous sont disponibles.',
	),
	array(
		0	=> 'Comment puis-je retrouver mes propres messages et sujets ?',
		1	=> 'Vos propres messages peuvent être affichés en cliquant sur le lien “Rechercher les messages de l’utilisateur” par l’intermédiaire du panneau de contrôle de l’utilisateur ou de votre propre profil. Pour effectuer une recherche de vos propres sujets, utilisez la recherche avancée et remplissez convenablement les options qui vous sont disponibles.',
	),
	array(
		0	=> '--',
		1	=> 'Abonnements aux sujets et favoris',
	),
	array(
		0	=> 'Quelle est la différence entre la mise en favori et l’abonnement ?',
		1	=> 'Dans phpBB3, la mise en favori d’un sujet est similaire à la mise en favori de pages par votre navigateur Internet. Vous ne serez pas averti lors de nouveaux messages, mais vous pourrez retourner rapidement au sujet ultérieurement. Par contre, l’abonnement vous préviendra lors de nouveaux messages sur le sujet ou forum que vous surveillez.',
	),
	array(
		0	=> 'Comment puis-je m’abonner à un forum ou à un sujet spécifique ?',
		1	=> 'Pour s’abonner à un forum spécifique, cliquez sur le lien “Surveiller le forum” dans le forum souhaité. Pour s’abonner à un sujet, répondez au sujet en sélectionnant l’option d’abonnement ou cliquez sur le lien “Surveiller le sujet” dans la page du sujet.',
	),
	array(
		0	=> 'Comment puis-je supprimer mes abonnements ?',
		1	=> 'Pour supprimer vos abonnements, rendez-vous sur le panneau de contrôle de l’utilisateur et suivez le lien vers vos abonnements.',
	),
	array(
		0	=> '--',
		1	=> 'Pièces jointes',
	),
	array(
		0	=> 'Quelles sont les pièces jointes autorisées sur ce forum ?',
		1	=> 'Chaque administrateur du forum peut autoriser ou interdire certains types de pièces jointes. Si vous n’êtes pas sûr de ce qui est autorisé ou non, n’hésitez pas à demander à l’administrateur du forum.',
	),
	array(
		0	=> 'Comment puis-je retrouver toutes mes pièces jointes ?',
		1	=> 'Pour retrouver la liste des pièces jointes que vous avez transféré, rendez-vous sur le panneau de contrôle de l’utilisateur et suivez les liens vers la section des pièces jointes.',
	),
	array(
		0	=> '--',
		1	=> 'Questions à propos de phpBB3',
	),
	array(
		0	=> 'Qui a écrit ce système de forum ?',
		1	=> 'Ce programme (dans sa forme non modifiée) est produit, distribué et est sous copyright par le <a href="http://www.phpbb.com/">phpBB Group</a>. Il est rendu accessible sous la Licence Publique Générale GNU et peut être distribué gratuitement. Pour plus d’informations, veuillez cliquer sur le lien.',
	),
	array(
		0	=> 'Pourquoi la fonctionnalité X n’est pas disponible ?',
		1	=> 'Ce programme a été écrit et mis sous licence par le phpBB Group. Si vous pensez qu’une fonctionnalité nécessite d’être ajoutée, veuillez vous rendre sur le site Internet de phpBB.com, proposez-la au phpBB Group et attendez leurs avis. Merci de ne pas envoyer directement de requêtes d’ajout de fonctionnalités sur le forum de phpBB.com, le phpBB Group utilise SourceForge afin de gérer ce type de requêtes. Veuillez consulter les forums afin de connaitre notre position, si nous en avons une, par rapport à cette fonctionnalité, et suivre la procédure spécifiée là-bas.',
	),
	array(
		0	=> 'Qui dois-je contacter à propos de problèmes d’abus ou d’ordres légaux liés à ce forum ?',
		1	=> 'Tous les administrateurs listés sur la page “L’équipe” devraient être un contact approprié pour ce genre de problèmes. Si vous n’obtenez aucune réponse de leur part, vous devriez alors contacter le propriétaire du domaine (faites un <a href="http://www.google.com/search?q=whois">WHOIS</a>) ou, si celui-ci fonctionne sur un service gratuit (comme Yahoo!, Free.fr, f2s.com, etc.), le service de gestion des abus. Veuillez notez que le phpBB Group n’a <strong>absolument aucune juridiction</strong> et ne peut en aucun cas être tenu comme responsable de comment, où et par qui ce forum est utilisé. Ne contactez pas le phpBB Group pour tout problème d’ordre légal (commentaire incessant, insultant, diffamatoire, etc.) qui n’ont <strong>pas directement de relation</strong> avec le site Internet de phpBB.com ou le script phpBB en lui-même. Si vous envoyez un e-mail au phpBB Group <strong>à propos d’une utilisation de tierce partie</strong> de ce logiciel, attendez-vous à une réponse laconique ou à aucune réponse, tout simplement.',
	),
);

?>