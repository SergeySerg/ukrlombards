<table style="font-family:Arial, Helvetica, sans-serif;
	color:#666;
	font-size:16px;
	text-shadow: 1px 1px 0px #fff;
	background:#eaebec;
	margin:20px;
	border:#ccc 1px solid;
	border-collapse:separate;
	border-spacing: 0px;

	-moz-border-radius:3px;
	-webkit-border-radius:3px;
	border-radius:3px;

	-moz-box-shadow: 0 1px 2px #d1d1d1;
	-webkit-box-shadow: 0 1px 2px #d1d1d1;
	box-shadow: 0 1px 2px #d1d1d1;">
    <tr >
        <td colspan="2" style="text-align: center;"><img src="<?php echo $message->embed('img/frontend/logo.png'); ?>"> </td>
    </tr>
    <tr>
        <td colspan="2" style="border-bottom: 1px solid #e0e0e0; border-right: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">Заявка на вакансию - {{ $vacancy }}</td>
    </tr>
    <tr>
        <td style="border-bottom: 1px solid #e0e0e0; border-right: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">ФИО  </td>
        <td style="border-bottom: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">{{ $name }}</td>
    </tr>
    <tr>
        <td style="border-bottom: 1px solid #e0e0e0; border-right: 1px solid #e0e0e0; padding: 7px 17px;">Телефон</td>
        <td style="border-bottom: 1px solid #e0e0e0; padding: 7px 17px;">{{ $phone }}</td>
    </tr>
    <tr>
        <td style="border-bottom: 1px solid #e0e0e0; border-right: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">Специальность</td>
        <td style="border-bottom: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">{{ $specialty }}</td>
    </tr>
    <tr>
        <td style="border-bottom: 1px solid #e0e0e0; border-right: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">Опыт работы</td>
        <td style="border-bottom: 1px solid #e0e0e0; background: #fafafa;  padding: 7px 17px;">{{ $experience }}</td>
    </tr>
    <tr>
        <td style="border-bottom: 1px solid #e0e0e0; border-right: 1px solid #e0e0e0; padding: 7px 17px;">Сообщение</td>
        <td style="border-bottom: 1px solid #e0e0e0; padding: 7px 17px;">{{ $text }}</td>
    </tr>

</table>