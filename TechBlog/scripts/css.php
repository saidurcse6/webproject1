<link rel="stylesheet" href="font-awesome-4.5.0/css/font-awesome.css">
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="style.css">
<?php 
                $query = "select * from tbl_theme where id='1'";
                $themes = $db->select($query);
                while ($result = $themes->fetch_assoc()) { 
                    if ($result['theme'] == 'yellow') { ?>
                        <link rel="stylesheet" href="theme/yellow.css">
                        <?php } elseif ($result['theme'] == 'green') { ?>
                            <link rel="stylesheet" href="theme/green.css">
                     <?php } elseif ($result['theme'] == 'red') { ?>
                        <link rel="stylesheet" href="theme/red.css">
                        <?php } elseif ($result['theme'] == 'blue') { ?>
                        <link rel="stylesheet" href="theme/blue.css">
                <?php } } ?>
               